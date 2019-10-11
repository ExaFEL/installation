Download psana2 conda environment file  
wget https://raw.githubusercontent.com/slac-lcls/relmanage/master/env_create.yaml  
* add name: psana2_py36  
* change python to python=3.6  

conda env create -f env_create.yaml    
conda activate psana2_py36 [for new terminal,  . /global/cscratch1/sd/monarin/conda/etc/profile.d/conda.sh]  
git clone https://github.com/slac-lcls/lcls2.git  
cd lcls2  
[remove first line in setup_env.sh]  
source setup_env.sh  
module swap PrgEnv-intel PrgEnv-gnu  
CC=/opt/gcc/7.3.0/bin/gcc CXX=/opt/gcc/7.3.0/bin/g++ ./build_all.sh  

Build mpi4py  
conda uninstall mpi4py mpich2 —force  
[If the PrgEnv-gnu is not loaded, load it.]  
http://www.nersc.gov/users/data-analytics/data-analytics-2/python/anaconda-python/#buildingmpi4py  

Running psana2:  
. /global/cscratch1/sd/monarin/conda/etc/profile.d/conda.sh  
conda activate psana2_py36  



