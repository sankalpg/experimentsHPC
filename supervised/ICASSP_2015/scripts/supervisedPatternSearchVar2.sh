#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.txt" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N Motif
#$ -q default.q
#$ -cwd
#$ -t 1-561:1

./ICASSP2015_ExperimentVar2_O3 ${files[${SGE_TASK_ID}-1]%.*} ${files[${SGE_TASK_ID}-1]} "fileExtensionsICASSP2015_ExperimentVar2.txt" 1000 -1 1
