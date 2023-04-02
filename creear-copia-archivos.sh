#!/bin/bash

FILES=(
    "00_helloworld.py"
    "01_variables.py"
    "02_operators.py"
    "03_strings.py"
    "04_lists.py"
    "04_lists2.py"
    "04_lists3.py"
    "04_lists4.py"
    "05_tuples.py"
    "06_sets.py"
    "06_sets2-ejercicio.py"
    "06_sets2.py"
    "07_dicts-ejercicio.py"
    "07_dicts.py"
    "08_conditionals.py"
    "09_loops.py"
    "10_functions.py"
    "11_classes.py"
    "12_exceptions.py"
    "13_modules.py"
    "my_module.py"
)

for file in "${FILES[@]}"; do
    cp "${file}" "${file%.*}.sh"
done
