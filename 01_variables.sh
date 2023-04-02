#!/bin/bash


# Variables

my_string_variable="My String variable"        # Creamos una variable de tipo cadena y le asignamos un valor
echo $my_string_variable                       # Imprimimos el valor de la variable

my_int_variable=5                              # Creamos una variable de tipo entero y le asignamos un valor
echo $my_int_variable                          # Imprimimos el valor de la variable

my_int_to_str_variable="$(echo $my_int_variable | tr -d '\n')"    # Convertimos el valor de la variable entera a cadena
echo $my_int_to_str_variable                                    # Imprimimos el valor de la variable convertida a cadena
echo ${my_int_to_str_variable}                                   # Imprimimos el valor de la variable entre corchetes

my_bool_variable=false                         # Creamos una variable booleana y le asignamos un valor
echo $my_bool_variable                         # Imprimimos el valor de la variable

# Concatenación de variables en un echo
echo "$my_string_variable $my_int_to_str_variable $my_bool_variable"    # Imprimimos varias variables concatenadas en una sola línea
echo "Este es el valor de: $my_bool_variable"                           # Imprimimos un mensaje que incluye una variable

# Algunas funciones del sistema
echo ${#my_string_variable}                     # Imprimimos la longitud de la cadena almacenada en la variable

# Variables en una sola línea. ¡Cuidado con abusar de esta sintaxis!
name="Brais"; surname="Moure"; alias="MoureDev"; age=35       # Creamos varias variables en una sola línea
echo "Me llamo: $name $surname. Mi edad es: $age. Y mi alias es: $alias"     # Imprimimos las variables concatenadas en una sola línea

# Inputs
read -p '¿Cuál es tu nombre? ' name
read -p '¿Cuántos años tienes? ' age
echo $name
echo $age

# Cambiamos su tipo
name=35
age="Brais"
echo $name
echo $age

# ¿Forzamos el tipo?
address="Mi dirección"
address=true
address=5
address=1.2
echo $address

# Ejemplos de mezcla de diferentes tipos de datos en Bash:
nombre="Juan"
edad=30
altura=1.75
es_programador=true

# Concatenación de variables de diferentes tipos
echo "Mi nombre es $nombre y tengo $edad años."
echo "Mi altura es $altura metros."
echo "¿Soy programador? $es_programador"

# Inputs
read -p "¿De qué país eres? " pais
read -p "¿En qué año naciste? " anio_nacimiento

# Cálculo de la edad actual
edad_actual=$((2023 - $anio_nacimiento))

# Concatenación de variables de diferentes tipos
echo "Soy de $pais y tengo $edad_actual años."
