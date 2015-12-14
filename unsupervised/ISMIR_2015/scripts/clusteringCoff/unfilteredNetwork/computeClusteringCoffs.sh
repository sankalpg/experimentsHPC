#!/bin/bash

#$ -N ClusterinCoff
#$ -q default.q
#$ -cwd
#$ -t 1-50:1

./constructNetwork_O3 ".pattDistances2" "/homedtic/sgulati/motifDiscovery/dataset/PatternProcessing_DB/unsupervisedDBs/carnaticDB/Carnatic10RagasISMIR2015DB/__dbInfo__/Carnatic10RagasISMIR2015DB.flistServer" "temp.temp" "${SGE_TASK_ID}" 1 
