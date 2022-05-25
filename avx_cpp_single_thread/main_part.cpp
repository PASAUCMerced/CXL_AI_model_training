#include "cpu_adam.cpp"
#include <memory>
#include <type_traits>
#include <cstring>
#include <unordered_map>
#include <sys/time.h>

using namespace std;

static std::unordered_map<int, std::shared_ptr<void>> s_optimizers;

int create_adam_optimizer(int optimizer_id,
                          float alpha = 1e-3,
                          float betta1 = 0.9,
                          float betta2 = 0.999,
                          float eps = 1e-8,
                          float weight_decay = 0,
                          bool adamw_mode = true,
                          bool should_log = false)
{
    auto opt =
        std::make_shared<Adam_Optimizer>(alpha, betta1, betta2, eps, weight_decay, adamw_mode);

    s_optimizers[optimizer_id] = opt;
    return 0;
}

int ds_adam_step(int optimizer_id,
                 size_t step,
                 float lr,
                 float beta1,
                 float beta2,
                 float epsilon,
                 float weight_decay,
                 bool bias_correction,
                 float* params,
                 float* grads,
                 float* exp_avg,
                 float* exp_avg_sq,
                 int size)
{
    
    // assert(params.options().dtype() == grads.options().dtype());

    float* params_ptr = params;
    float* grads_ptr = grads;
    float* exp_avg_ptr = exp_avg;
    float* exp_avg_sq_ptr = exp_avg_sq;
    bool half_precision = false;
    std::shared_ptr<Adam_Optimizer> opt =
        std::static_pointer_cast<Adam_Optimizer>(s_optimizers[optimizer_id]);
    opt->IncrementStep(step, beta1, beta2);
    opt->update_state(lr, epsilon, weight_decay, bias_correction);
    // printf("start 8 computaqtion\n");
    // printf("size %d\n", size);
    opt->Step_8(params_ptr,
                grads_ptr,
                exp_avg_ptr,
                exp_avg_sq_ptr,
                size,
                half_precision);

    // opt->SynchronizeStreams();
    return 0;
}

int destroy_adam_optimizer(int optimizer_id)
{
    s_optimizers.erase(optimizer_id);
    return 0;
}

int main(int argc, char* argv[]){

    // read data and allocate memory
    char* param_path = argv[1];
    char* grad_path  = argv[2];

    FILE* fp = fopen(param_path, "rb");
    FILE* fg = fopen(grad_path, "rb");
    if(fp == NULL || fg == NULL){
        printf("Can not open file\n");
    }
    
    // printf("Reading files\n");
    int size_p, size_g, len_g;
    fread(&size_p, 4, 1, fp);
    fread(&size_g, sizeof(int), 1, fg);
    printf("%d %d\n", size_g, size_p);
    // printf("Allocate memory!");
    float** p = (float **) malloc(sizeof(float*)*size_p);
    float** g = (float **) malloc(sizeof(float*)*size_g);
    float** exp = (float **) malloc(sizeof(float*)*size_p);
    float** exp_sg = (float **) malloc(sizeof(float*)*size_g);
    int* len_p = (int*)malloc(sizeof(int) * size_p);

    for(int i=0; i<size_p; i++){  
        printf("read %d\n", i);
        fread(&len_p[i], sizeof(int), 1, fp);
        printf("%d ", len_p[i]);
        fread(&len_g, sizeof(int), 1, fg);
        p[i] = (float*)malloc(sizeof(float)*len_p[i]);
        g[i] = (float*)malloc(sizeof(float)*len_g);
        // if (g[i]==nullptr) {printf("allocate rrror \n");}
        exp[i] = (float*)malloc(sizeof(float)*len_p[i]);
        exp_sg[i] = (float*)malloc(sizeof(float)*len_g);
        // if (len_g!=len_p[i]){
        //     printf("error\n");    
        // }
        memset(exp[i], 0, sizeof(float)*len_g);
        memset(exp_sg[i], 0, sizeof(float)*len_g);
        fread(p[i], sizeof(float), len_p[i], fp);
        fread(g[i], sizeof(float), len_g, fg);
    }

    // printf("Finish all the reading\n");
    fclose(fp);
    fclose(fg);

    // // do the computation 
    // create_adam_optimizer(0);
    

    // // start compuation
    // struct timeval t1, t2;
    // gettimeofday(&t1, NULL);
    // for(int i=0; i < size_p; i++){
    //     // printf("length %d\n", len_p[i]);
    //     ds_adam_step(0, i, 0.01, 0.9,0.999, 1e-8, 0, false, p[i], g[i], exp[i], exp_sg[i], len_p[i]);
    //     // printf("computation");
    // }
    // gettimeofday(&t2, NULL);
    // printf("update time: %lfms\n", (t2.tv_sec-t1.tv_sec) * 1000.0 + (t2.tv_usec -  t1.tv_usec) /1000.0 );

    free(p);
    free(g);
    free(exp);
    free(exp_sg);
    free(len_p);


    return 0;
}

