#!/bin/bash

# Declarar las tarifas para cada tipo de vehículo
tarifas=(["automóvil"]=10 ["camión"]=20 ["autobús"]=30)

# Declarar un array asociativo para almacenar la cantidad de vehículos y su tarifa total
declare -A recaudacion=(["automóvil"]=0 ["camión"]=0 ["autobús"]=0 ["tarifa_total"]=0)

# Definir una función para imprimir la recaudación actual
function imprimir_recaudacion() {
    echo "Recaudación total: ${recaudacion[tarifa_total]} dólares"
    for tv in "${!tarifas[@]}"; do
        cantidad="${recaudacion[$tv]}"
        recaudacion_tv=$(( cantidad * tarifas[tv] ))
        echo "Cantidad de $tv: $cantidad"
        echo "Recaudación por $tv: $recaudacion_tv dólares"
        echo "La recaudación total es: ${recaudacion[tarifa_total]} dólares"
    done
}

# Bucle principal
while true; do
    # Pedir al usuario que elija el tipo de vehículo o salir
    read -p "Introduce el número para elegir el tipo de vehículo (1: automóvil, 2: camión, 3: autobús o 0 para salir): " opcion

    # Si el usuario ha pulsado Enter sin introducir nada, volver al inicio del bucle
    if [[ -z "$opcion" ]]; then
        continue
    fi

    # Salir si el usuario ha elegido la opción 0
    if [[ "$opcion" == "0" ]]; then
        break
    fi

    # Comprobar si la opción es válida y obtener el tipo de vehículo y la tarifa correspondiente
    case "$opcion" in
    "1")
        tipo_vehiculo="automóvil"
        tarifa=10
        ;;
    "2")
        tipo_vehiculo="camión"
        tarifa=20
        ;;
    "3")
        tipo_vehiculo="autobús"
        tarifa=30
        ;;
    *)
        echo "Opción inválida"
        continue
        ;;
    esac

    # Aumentar la cantidad de vehículos y la tarifa total para el tipo de vehículo
    recaudacion[$tipo_vehiculo]=$((${recaudacion[$tipo_vehiculo]} + 1))
    recaudacion[tarifa_total]=$((recaudacion[tarifa_total] + tarifa))
    # Imprimir la recaudación actual
    imprimir_recaudacion
done

# Este script funciona de manera similar al código original en Python. Se utiliza un array asociativo (recaudacion) para almacenar la cantidad de vehículos y la tarifa total para cada tipo de vehículo. También se utiliza un array (tarifas) para definir la tarifa para cada tipo de vehículo. La función imprimir_recaudacion se utiliza para imprimir la recaudación actual después de cada vez que se introduce un vehículo.
