#!/bin/bash

# Declarar la lista de tarifas y el diccionario de recaudación
tarifas=("automóvil 10" "camión 20" "autobús 30")
declare -A recaudacion=( ["automóvil"]=0 ["camión"]=0 ["autobús"]=0 ["tarifa_total"]=0 )

while true; do
    # Preguntar al usuario el tipo de vehículo
    echo "Introduce el número para elegir el tipo de vehículo (1: automóvil, 2: camión, 3: autobús o 0 para salir): "
    read opcion
    
    if [ $opcion -eq 0 ]; then
        break
    fi
    
    # Buscar el tipo de vehículo correspondiente a la opción
    tipo_vehiculo=""
    tarifa=0
    case $opcion in
        1)
            tipo_vehiculo="automóvil"
            tarifa=10
            ;;
        2)
            tipo_vehiculo="camión"
            tarifa=20
            ;;
        3)
            tipo_vehiculo="autobús"
            tarifa=30
            ;;
        *)
            echo "No existe ese número. Por favor, introduzca un número válido."
            continue
            ;;
    esac
    
    # Aumentar la cantidad de vehículos y la tarifa total para el tipo de vehículo
    recaudacion[$tipo_vehiculo]=$((recaudacion[$tipo_vehiculo]+1))
    recaudacion["tarifa_total"]=$((recaudacion["tarifa_total"]+tarifa))
done

# Imprimir la recaudación total
echo "Recaudación total: ${recaudacion[tarifa_total]} dólares"

# Imprimir la cantidad de vehículos y la recaudación por tipo de vehículo
for tarifa in "${tarifas[@]}"; do
    tv=$(echo $tarifa | cut -d " " -f1)
    t=$(echo $tarifa | cut -d " " -f2)
    echo "Cantidad de $tv: ${recaudacion[$tv]}"
    echo "Recaudación por $tv: $((recaudacion[$tv]*t)) dólares"
done

# Este código en bash tiene una estructura muy similar al código en Python, con algunas diferencias importantes:

#     En bash, las listas se declaran como arreglos, y se usan los paréntesis "()". Cada elemento de la lista se separa con un espacio.

#     Para declarar un diccionario en bash, se utiliza la sintaxis "declare -A", y luego se asignan los valores con la notación de corchetes "[]".

#     Para leer la entrada del usuario, se utiliza el comando "read", que asigna el valor ingresado a una variable especificada.

#     En bash, se utiliza la estructura "case" en lugar de "if-elif-else" para manejar varias opciones de entrada.

#     Para acceder a los valores de un arreglo o un diccionario en bash, se utiliza la notación de corchetes "[]", y se escribe el nombre de la clave o el índice entre los corchetes.

#     Para imprimir los resultados, se utilizan los comandos "echo" y "cut" para formatear la salida.