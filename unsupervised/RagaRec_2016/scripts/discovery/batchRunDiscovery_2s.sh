#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.pitchSilIntrpPP" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N MotifDiscovery
#$ -q default.q
#$ -cwd
#$ -t 1-260:1

./discoverPatterns_O3 ${files[${SGE_TASK_ID}-1]%.*} "/homedtic/sgulati/motifDiscovery/dataset/PatternProcessing_DB/unsupervisedDBs/hindustaniDB/Hindustani26Ragas/__dbInfo__/params/procParamsDiscovery_2s.txt" "/homedtic/sgulati/motifDiscovery/dataset/PatternProcessing_DB/unsupervisedDBs/hindustaniDB/Hindustani26Ragas/__dbInfo__/params/fileExtensionsDiscovery_2s.txt" 30 -1 1

