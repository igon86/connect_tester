#!/bin/bash

# change all these values accordingly

export DPU_CODE_FOLDER=/proj/arcade/home/lottarini/DPU/sql_compiler/

if [ ${#DPU_CODE_FOLDER} -eq 0 ] || [ ! -d $DPU_CODE_FOLDER ]; then
	1>&2 echo "DPU_CODE_FOLDER does not point to a valid directory - please fix" 
fi

export CONNECT_GENERATOR=/proj/arcade/home/lottarini/connect_generator/connect_gen_network

if [ ${#CONNECT_GENERATOR} -eq 0 ] || [ ! -f $CONNECT_GENERATOR ]; then
	1>&2 echo "CONNECT GENERATOR does not point to a valid file - please fix" 
fi

export ASSIGNMENT_GENERATOR=/proj/arcade/home/lottarini/connect_tester/assignments.py

if [ ${#ASSIGNMENT_GENERATOR} -eq 0 ] || [ ! -f $ASSIGNMENT_GENERATOR ]; then
	1>&2 echo "ASSIGNMENT GENERATOR does not point to a valid file - please fix" 
fi


