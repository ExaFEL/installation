# variables needed to run psana2
export PSANA_PREFIX=/global/cscratch1/sd/monarin/installation/psana2/nersc-cori/lcls2
export PATH=$PSANA_PREFIX/install/bin:/global/common/cori_cle7/software/darshan/3.1.7/bin:/global/common/cori/software/altd/2.0/bin:/usr/common/software/bin:/usr/common/mss/bin:/usr/common/nsg/bin:/opt/cray/pe/mpt/7.7.6/gni/bin:/opt/cray/rca/2.2.20-7.0.0.1_4.42__g8e3fb5b.ari/bin:/opt/cray/alps/6.6.50-7.0.0.1_3.44__g962f7108.ari/sbin:/opt/cray/alps/default/bin:/opt/cray/job/2.2.4-7.0.0.1_3.36__g36b56f4.ari/bin:/opt/cray/pe/craype/2.5.18/bin:/opt/intel/compilers_and_libraries_2019.3.199/linux/bin/intel64:/opt/ovis/bin:/opt/ovis/sbin:/usr/syscom/nsg/sbin:/usr/syscom/nsg/bin:/opt/cray/pe/modules/3.2.11.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/lib/mit/bin:/usr/lib/mit/sbin:/opt/cray/pe/bin
export PYTHONPATH=$PSANA_PREFIX/install/lib/python3.7/site-packages
# for procmgr
export TESTRELDIR=$PSANA_PREFIX/install

# variables needed for conda
module load python/3.7-anaconda-2019.07
conda env list | grep psana2_py37
if [ 0 -eq 0 ] 
then
  source /usr/common/software/python/3.7-anaconda-2019.07/etc/profile.d/conda.sh
  conda activate psana2_py37
fi
