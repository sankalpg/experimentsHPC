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
#$ -t 1-140:1

./discoverPatterns_O3 ${files[${SGE_TASK_ID}-1]%.*} "procParamsDiscovery_4s.txt" "fileExtensionsDiscovery_4s.txt" 25 -1 1

