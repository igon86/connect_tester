#!/bin/bash

if [ ${#DPU_CODE_FOLDER} -eq 0 ] || [ ! -d "$DPU_CODE_FOLDER/noc" ]; then
	1>&2 echo "DPU_CODE_FOLDER does not point to a valid directory - please fix" 
	exit 1
fi

# this is the executable from Michael to query the CONNECT web service
if [ ${#CONNECT_GENERATOR} -eq 0 ] || [ ! -f $CONNECT_GENERATOR ]; then
	1>&2 echo "CONNECT_GENERATOR does not point to a valid file - please fix" 
	exit 1
fi

# this is the python script to create a quartus proj out of the CONNECT output
if [ ${#ASSIGNMENT_GENERATOR} -eq 0 ] || [ ! -f $ASSIGNMENT_GENERATOR ]; then
	1>&2 echo "CONNECT_GENERATOR does not point to a valid file - please fix" 
	exit 1
fi
