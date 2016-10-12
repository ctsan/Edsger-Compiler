#!/bin/bash

# If number of arguments less then 1; print usage and exit
#if [ $# -lt 0 ]; then
#    printf "Usage: %s <application>\n" "$0" >&2
#    exit 1
#fi

bin="Compiler"           # The application (from command arg)
diff="diff -iad"   # Diff command, or what ever
testcase="./_test/input/unit_test_"

# An array, do not have to declare it, but is supposedly faster
#declare -a file_base=("$basae/unit_test_1" "$base/unit_test_2")
# Number of tests
tests=`ls -d ${testcase}*.eds | wc -l`

# Loop the array
#for file in "${file_base[@]}"; do
  for num in `seq 1 ${tests}`; do
  # Padd file_base with suffixes
    file_source="$testcase$num.eds"             # The source code
    file_in="$testcase$num.in"
    file_out_tst="./out.txt"       # The out file to check against
    file_out_val="$testcase$num.out"   # The outfile from test application

    # Validate infile exists (do the same for out validate file)
    if [ -f "$file_in" ]; 
    then
        input="$file_in"
    else
        input="/dev/null"     
    fi

    if [ ! -f "$file_out_val" ]; then
        printf "Validation file %s is missing\n" "$file_out_val"
        continue;
    fi

    printf "Testing against %s\n" "$file_source"

    # Run application, redirect in file to app, and output to out file
    #set -x
    "./$bin" "-d" "$file_source" > /dev/null
    #set +x
    OS=$(uname -s)
    if [ $OS == "Darwin" ] 
    then
        perl -pi -e 's/main/_main/' out.s;
        perl -pi -e 's/malloc/_malloc/' out.s
    fi
    gcc -c out.s
    gcc -o output out.o lib.a
    ./output < $input > "$file_out_tst"

    # Execute diff
    $diff "$file_out_tst" "$file_out_val"


    # Check exit code from previous command (ie diff)
    # We need to add this to a variable else we can't print it
    # as it will be changed by the if [
    # Iff not 0 then the files differ (at least with diff)
    e_code=$?
    if [ $e_code != 0 ]; then
            printf "TEST FAIL : %d\n" "$e_code"
    else
            printf "TEST OK!\n"
    fi

    # Pause by prompt
    #read -p "Enter a to abort, anything else to continue: " input_data
    # Iff input is "a" then abort
    #[ "$input_data" == "a" ] && break

done
rm output out.{o,s,imm,txt}
# Clean exit with status 0
exit 0
