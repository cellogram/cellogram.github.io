#! /bin/bash

find . -name "*.tex" -exec sed -i 's/Lendenmann:0:COT/Lendenmann:2019:COT/g' {} \;
