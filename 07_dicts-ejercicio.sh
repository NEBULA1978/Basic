#!/bin/bash

# Definir la autopista y sus carreteras como una matriz asociativa
declare -A autopista=(
    ["nombre"]="Autopista del Norte"
    ["carreteras.Carretera A.longitud"]=100
    ["carreteras.Carretera A.ciudades_atraviesa[0]"]="Ciudad 1"
    ["carreteras.Carretera A.ciudades_atraviesa[1]"]="Ciudad 2"
    ["carreteras.Carretera B.longitud"]=200
    ["carreteras.Carretera B.ciudades_atraviesa[0]"]="Ciudad 2"
    ["carreteras.Carretera B.ciudades_atraviesa[1]"]="Ciudad 3"
    ["carreteras.Carretera C.longitud"]=150
    ["carreteras.Carretera C.ciudades_atraviesa[0]"]="Ciudad 3"
    ["carreteras.Carretera C.ciudades_atraviesa[1]"]="Ciudad 4"
)

# Acceder a la información sobre la carretera B
carretera_b="{
  \"longitud\": ${autopista["carreteras.Carretera B.longitud"]},
  \"ciudades_atraviesa\": [
    \"${autopista["carreteras.Carretera B.ciudades_atraviesa[0]"]}\",
    \"${autopista["carreteras.Carretera B.ciudades_atraviesa[1]"]}\"
  ]
}"
echo "Información sobre la Carretera B: $carretera_b"

# Calcular la longitud total de todas las carreteras
longitud_total=0
for longitud in "${autopista[@]}"; do
    # Si el valor es un número, sumarlo a la longitud total
    if [[ $longitud =~ ^[0-9]+$ ]]; then
        longitud_total=$((longitud_total + longitud))
    fi
done
echo "La longitud total de las carreteras en la autopista es: $longitud_total"

# Obtener una lista de todas las ciudades atravesadas por la autopista
# Usamos mapfile para almacenar la salida del comando en un arreglo en lugar de una cadena de texto
# Utilizamos el parámetro -t para eliminar el carácter de nueva línea al final de cada elemento del arreglo
mapfile -t ciudades_atravesadas < <(echo "${autopista[@]}" | grep -o 'Ciudad [0-9]\+' | sort -u)
# Usamos [*] para indicar que queremos imprimir todos los elementos del arreglo separados por un espacio
echo "Las ciudades atravesadas por la autopista son: ${ciudades_atravesadas[*]}"
.

# Resultado por consola

# /07_dicts-ejercicio.sh
# Información sobre la Carretera B: {
#   "longitud": 200,
#   "ciudades_atraviesa": [
#     "Ciudad 2",
#     "Ciudad 3"
#   ]
# }
# La longitud total de las carreteras en la autopista es: 450
# Las ciudades atravesadas por la autopista son: Ciudad 1 Ciudad 2 Ciudad 3 Ciudad 4