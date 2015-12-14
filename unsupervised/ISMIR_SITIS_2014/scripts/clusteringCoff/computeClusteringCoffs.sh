#!/bin/bash

#$ -N Motif
#$ -q default.q
#$ -cwd
#$ -t 1-50:1

./constructNetwork_O3 ".pattDistances" "Carnatic_RemRepsPattList_hpc.flist" "temp.temp" "${SGE_TASK_ID}" 1 
