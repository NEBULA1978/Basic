#!/bin/bash

# Definición de tarifas

tarifas=(10 20 30)

# Bucle para recoger el tipo de vehículo y calcular la tarifa

while true; do
    # Preguntamos por el tipo de vehículo
    read -p "Introduce el número correspondiente al tipo de vehículo (1 para automóvil, 2 para camión, 3 para autobús o 0 para salir): " tipo
    # Convertimos la entrada en un número entero
    tipo=$((tipo))

    # Si se introduce 0, salimos del bucle
    if [[ $tipo -eq 0 ]]; then
        break
    fi

    # Si el tipo introducido no está en la lista de tipos disponibles, se informa y se vuelve a preguntar
    if [[ $tipo -lt 1 || $tipo -gt 3 ]]; then
        echo "Tipo de vehículo no reconocido, inténtalo de nuevo."
        continue
    fi

    # Si el tipo introducido está disponible, se calcula la tarifa
    tarifa=${tarifas[$((tipo - 1))]}
    if [[ $tipo -eq 1 ]]; then
        tipo_vehiculo="automóvil"
    elif [[ $tipo -eq 2 ]]; then
        tipo_vehiculo="camión"
    else
        tipo_vehiculo="autobús"
    fi
    echo "La tarifa para un $tipo_vehiculo es de $tarifa euros."
done

# hay tuplas en bash?

# No, Bash no tiene un tipo de dato específico para las tuplas como Python u otros lenguajes de programación. Sin embargo, es posible emular una tupla en Bash utilizando un array indexado y marcándolo como de solo lectura con el comando "readonly". Por ejemplo, se podría definir una tupla en Bash de la siguiente manera:

# bash

# mi_tupla=("hola" 123 "mundo")
# readonly mi_tupla

# En este caso, mi_tupla es un array que contiene tres elementos: el string "hola", el número 123 y el string "mundo". Al marcar el array como de solo lectura con readonly, se asegura que no se puedan agregar, eliminar ni modificar elementos en la tupla. Además, se puede acceder a los elementos de la tupla de la misma forma que se accede a los elementos de un array indexado en Bash:

# bash

# echo ${mi_tupla[0]}   # muestra "hola"
# echo ${mi_tupla[1]}   # muestra "123"
# echo ${mi_tupla[2]}   # muestra "mundo"

# Cabe destacar que esta emulación de tuplas en Bash es limitada y puede no ser tan eficiente como el tipo de dato nativo en otros lenguajes de programación. En general, se recomienda utilizar arrays en Bash para manejar colecciones de datos.