#!/bin/bash

# General Purpose Tester Against Exit Codes
# Author: C.Tsanikidis, Jul 2016
# Released under MIT License

# Short Documentation:

COMMAND=$1
EXITCODE=$2
COMP_OP=$3  # -eq , -gt ... 
FAILS=0

if [ $# -lt 4 ]; then
    printf "help:\n\t Test.sh EXECUTABLE EXIT_CODE COMPARISON_OPERATOR ARGUMENT1 [ARGUMENT2 ...]\n"
    exit 1
fi

for i in $(seq 4 $#); do
    $COMMAND ${!i} &>/dev/null
    if ! [ $EXITCODE $COMP_OP $? ]; then
        printf "Failed: %s\n" ${!i}
        let "FAILS+=1"
    fi
done

if [ $FAILS -gt 0 ]; then
    printf "\x1B[31mTotal Fails %d\n"  $FAILS
else 
    printf "\x1B[32mTotal Successful %d\n" $(($# - FAILS -3))
fi

# Make Sure to Clear Color
printf "\x1B[0m"
