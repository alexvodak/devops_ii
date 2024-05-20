#!/bin/bash

rm -rf package-lock.json
rm -rf node_modules
start=$(date +%s)
npm install
end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc -l)
echo "run time is: $runtime seconds"
