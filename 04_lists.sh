#!/bin/bash

# Definición de listas

# Creación de una lista vacía
my_list=()

# Creación de otra lista vacía
my_other_list=()

# Longitud de la lista (0 en este caso)
echo "${#my_list[@]}"

# Creación de una lista con valores
my_list=(35 24 62 52 30 30 17)

# Impresión de la lista y su longitud
echo "${my_list[@]}"
echo "${#my_list[@]}"

# Creación de otra lista con valores de diferentes tipos
my_other_list=(35 1.77 "Brais" "Moure")

# Impresión de los tipos de las listas
echo "${my_list[@]}"
echo "${my_other_list[@]}"

# Acceso a elementos y búsqueda

# Acceso al primer elemento de la lista
echo "${my_other_list[0]}"

# Acceso al segundo elemento de la lista
echo "${my_other_list[1]}"

# Acceso al último elemento de la lista
echo "${my_other_list[-1]}"

# Acceso al penúltimo elemento de la lista
echo "${my_other_list[-4]}"

# Contar el número de veces que un elemento aparece en la lista
echo "${my_list[@]}" | tr ' ' '\n' | grep -c '^30$'

# Búsqueda de un elemento en la lista
echo "${my_other_list[@]}" | grep -n "Brais" | cut -f1 -d:

# Desempaquetado de la lista
read age height name surname <<< "${my_other_list[@]}"
echo "$name"

# Cambio del orden de los elementos al desempaquetar la lista
read -r name height age surname <<< "${my_other_list[2]} ${my_other_list[1]} ${my_other_list[0]} ${my_other_list[3]}"
echo "$age"

# Concatenación
echo "${my_list[@]}" "${my_other_list[@]}"
