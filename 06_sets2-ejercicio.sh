#!/bin/bash

# Definir los conjuntos de carreteras en la autopista
autopista_1=( "Carretera A" "Carretera B" "Carretera C" "Carretera D" )
autopista_2=( "Carretera B" "Carretera C" "Carretera E" "Carretera F" )

# Calcular la intersección de las carreteras que están presentes en ambas autopistas
read -ra carreteras_en_comun < <(echo "${autopista_1[@]}" "${autopista_2[@]}" | tr ' ' '\n' | sort | uniq -d)
echo "Las carreteras en común son: ${carreteras_en_comun[*]}"

# Calcular la unión de todas las carreteras en ambas autopistas
read -ra todas_las_carreteras < <(echo "${autopista_1[@]}" "${autopista_2[@]}" | tr ' ' '\n' | sort -u)
echo "Todas las carreteras son: ${todas_las_carreteras[*]}"


# En este código, hemos reemplazado $(...) con < <(...) para redirigir la salida del comando a read -a. El operador read -a divide la entrada en elementos de matriz en lugar de variables separadas por espacios, lo que evita la advertencia de shellcheck.

# El código Bash  utiliza arreglos para representar dos conjuntos de carreteras en una autopista y luego usa el comando echo, tuberías y comandos como tr, sort, y uniq para calcular la intersección y la unión de las carreteras presentes en ambos conjuntos.

# Para calcular la intersección, se utiliza el comando uniq -d para mostrar solo las líneas duplicadas. Para calcular la unión, se utiliza la opción -u del comando sort para mostrar solo líneas únicas.

# Además, para evitar las advertencias de shellcheck, se usa el comando read -a para dividir la salida del comando en elementos de matriz en lugar de variables separadas por espacios.