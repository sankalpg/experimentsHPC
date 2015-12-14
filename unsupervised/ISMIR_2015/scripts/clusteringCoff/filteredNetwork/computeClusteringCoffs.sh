#!/bin/bash

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.edges" -print0)

#$ -N ClusterinCoff
#$ -q default.q
#$ -cwd
#$ -t 1-25:1

./clusteringCoffGenFilteredNetwork_O3 ".pattDistances2" "/homedtic/sgulati/motifDiscovery/dataset/PatternProcessing_DB/unsupervisedDBs/carnaticDB/Carnatic10RagasISMIR2015DB/__dbInfo__/Carnatic10RagasISMIR2015DB.flistServer" ${files[0]} "$1" "${SGE_TASK_ID}" 1 

