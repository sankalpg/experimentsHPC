#!/bin/bash

#$ -N ClusterinCoff
#$ -q default.q
#$ -cwd
#$ -t 1-40:1

./constructNetwork_O3 ".pattDistance_2s" "/homedtic/sgulati/motifDiscovery/dataset/PatternProcessing_DB/unsupervisedDBs/carnaticDB/Carnatic10RagasICASSP2016/__dbInfo__/Carnatic10RagasICASSP2016.flist" "temp.temp" "${SGE_TASK_ID}" 1 
