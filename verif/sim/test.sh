#cleaning previous dump
rm mem.txt iss.csv core.csv regr.log
#running test
cp ../dv_tests/dv_test_${ARCH}/${TEST}/seed_${SEED}/test.hex mem.txt

make questa$HOST 
cp      ../dv_tests/dv_test_${ARCH}/${TEST}/seed_${SEED}/seed_${SEED}/iss.csv .
python3 ../dv_tests/scripts/core_log_to_trace_csv.py --log trace_core* --csv core.csv 
python3 ../dv_tests/scripts/instr_trace_compare.py --csv_file_1 iss.csv --csv_file_2 core.csv --csv_name_1 "iss" --csv_name_2 "core" --log regr.log 
mkdir -p output/$ARCH/${TEST}/${SEED}
[ ! -f regr.log ] && echo "regr.log file not create" && exit
cat regr.log
PASSED=0;
## read file for PASSED label 
while IFS= read -r line; do 
  if [[ "$line" == *"PASSED"* ]]; then
    echo "PASSED";
    PASSED=1;
  fi
done  < regr.log
if [ "${PASSED}" -eq 0 ]; then
    echo "Test failed, check logs in output/$ARCH/${TEST}/${SEED}" &&  exit
fi

mv iss.csv output/$ARCH/${TEST}/${SEED}
mv core.csv output/$ARCH/${TEST}/${SEED}
mv regr.log output/$ARCH/${TEST}/${SEED}
