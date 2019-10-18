Install psana2:  

./build_from_scratch.sh  

Test mpi:  
srun -n 3 python test_mpi.py  

Test psana2:
srun -n 1 python lcls2/psana/psana/tests/setup_input_files.py  
srun -n 3 python lcls2/psana/psana/tests/user_loops.py  


