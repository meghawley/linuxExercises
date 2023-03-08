#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d , -f 7 | {
  sum=0
  count=0
  while read value; do
    sum=$((sum+value))
    count=$((count+1))
  done
  average=$((sum/count))
  echo "Average TotalAssessedValue for MADISON SCHOOLS district: $average"
}
