#!/bin/bash
#BSUB -P CHM137
#BSUB -W 00:15
#BSUB -nnodes 2
#BSUB -alloc_flags gpumps
#BSUB -J RunCctbx
#BSUB -o RunCctbx.%J
#BSUB -e RunCctbx.%J
 
t_start=`date +%s`

source $MEMBERWORK/chm137/installation/cctbx/summit/env.sh
jsrun -n 40 ./index_lite.sh cxid9114 95 1 none 0

t_end=`date +%s`
echo PSJobCompleted TotalElapsed $((t_end-t_start)) $t_start $t_end

t_start=`date +%s`


