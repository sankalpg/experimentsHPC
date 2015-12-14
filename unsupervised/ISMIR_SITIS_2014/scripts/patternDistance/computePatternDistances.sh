#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.blackListRepPat" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N Motif
#$ -q default.q
#$ -cwd
#$ -t 1-1709:1
./ComputePatternDistances_O3 "${files[${SGE_TASK_ID}-1]%.*}" '.pitch' '.tonic' '.allPatternsInfoConf2' '.patternDataConf1' '.flistRemRepPat' '.pattDistances' '.blackListRepPat' 2.0 500000 5 5 1 0 0 
