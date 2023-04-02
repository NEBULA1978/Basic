#!/bin/bash

# Definir las tarifas como un arreglo asociativo en Bash
declare -A tarifas
tarifas["automóvil"]=10
tarifas["camión"]=20
tarifas["autobús"]=30

# Inicializar la recaudación como un arreglo asociativo en Bash
declare -A recaudacion
recaudacion["automóvil"]=0
recaudacion["camión"]=0
recaudacion["autobús"]=0
recaudacion["tarifa_total"]=0

# Función para imprimir la cantidad de vehículos y la recaudación por tipo de vehículo
function imprimir_recaudacion {
    for tv in "${!tarifas[@]}"; do
        echo "Cantidad de $tv: ${recaudacion[$tv]}"
        echo "Recaudación por $tv: $(( ${recaudacion[$tv]} * ${tarifas[$tv]} )) dólares"
    done
}

# Ciclo while para leer la entrada del usuario y actualizar la recaudación
while true; do
    read -p "Introduce el número para elegir el tipo de vehículo (1: automóvil, 2: camión, 3: autobús o 0 para salir): " opcion
    
    if [ "$opcion" == "0" ]; then
        break
    fi
    
    # Buscar el tipo de vehículo correspondiente a la opción
    tipo_vehiculo=""
    tarifa=0
    if [ "$opcion" == "1" ]; then
        tipo_vehiculo="automóvil"
        tarifa=${tarifas["automóvil"]}
    elif [ "$opcion" == "2" ]; then
        tipo_vehiculo="camión"
        tarifa=${tarifas["camión"]}
    elif [ "$opcion" == "3" ]; then
        tipo_vehiculo="autobús"
        tarifa=${tarifas["autobús"]}
    fi
    
    # Aumentar la cantidad de vehículos y la tarifa total para el tipo de vehículo
    (( recaudacion[$tipo_vehiculo]++ ))
    (( recaudacion["tarifa_total"]+=tarifa ))
done

# Imprimir la recaudación total
echo "Recaudación total: ${recaudacion["tarifa_total"]} dólares"

# Imprimir la cantidad de vehículos y la recaudación por tipo de vehículo
imprimir_recaudacion
