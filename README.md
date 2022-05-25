# CXL_AI_model_training
  This repo is for simulating the data transfering with CXL in adam_optimizer.
  We use trace_based method to calculate the end-to-end time[From starting the optimization to the end].
  
  It contains two major parts: avx_cpp_single_thread -- this diretory contains the code for adam_optimzer with avx instructions.
  The compilation command is : gcc -O3 -mavx512f -static -o cpucomp main.cpp
  
  The second part is gem5-avx(Please visit gem5 website to build gem5).. We use gem5-avx to simulate the program in avx_cpp_single-thread. sim.sh contains the command for runing this simulation.
  We trace each memory access and write the trace into a file. Before feed it into the analyzer, we need use extrace the timestamp from each memory write. Finally, we have process.py to process this trace.
