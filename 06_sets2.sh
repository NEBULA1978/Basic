#!/bin/bash

# En Bash no existe una estructura de datos nativa llamada set como en Python. Sin embargo, se pueden utilizar arreglos y herramientas de Bash para realizar operaciones similares a las de un set.

# Por ejemplo, para crear un "set" en Bash que contenga elementos únicos, podemos utilizar un arreglo y la herramienta de Bash llamada "sort" para eliminar elementos duplicados:

# bash

my_set=(1 2 3 3 4 4 5)
mapfile -t my_unique_set < <(printf '%s\n' "${my_set[@]}" | sort -u)
echo "${my_unique_set[@]}"


# En este código, primero creamos un arreglo llamado "my_set" con elementos que incluyen duplicados. Luego, utilizamos el comando "echo" y "tr" para convertir el arreglo en una lista separada por saltos de línea, para poder aplicar el comando "sort -u" que ordena los elementos y elimina duplicados. Finalmente, utilizamos "tr" nuevamente para convertir la lista de regreso en un arreglo separado por espacios y lo almacenamos en una variable llamada "my_unique_set". La última línea del código imprime el arreglo resultante.

# Para agregar elementos a un arreglo en Bash, podemos utilizar la sintaxis de corchetes y el índice correspondiente:

# bash

my_set=(1 2 3)
my_set[3]=4
echo "${my_set[@]}"

# Este código agrega el número 4 al final del arreglo "my_set".

# Para buscar elementos en un arreglo en Bash, podemos utilizar un ciclo for y una estructura de control if para verificar si el elemento existe:

# bash

my_set=(1 2 3)
search_element=2
for i in "${my_set[@]}"; do
    if [[ "$i" == "$search_element" ]]; then
        echo "Element found"
        break
    fi
done

# En este código, creamos un arreglo "my_set" y una variable "search_element" que contiene el valor que queremos buscar. Luego, utilizamos un ciclo for para recorrer cada elemento del arreglo y una estructura if para comparar cada elemento con el valor de búsqueda. Si el elemento se encuentra, imprimimos un mensaje y salimos del ciclo utilizando la instrucción "break".

# Para eliminar elementos de un arreglo en Bash, podemos utilizar la herramienta "unset" y especificar el índice correspondiente:

# bash

my_set=(1 2 3)
unset "my_set[1]"
echo "${my_set[@]}"

# Este código elimina el elemento en la posición 1 del arreglo "my_set", que es el número 2. La última línea del código imprime el arreglo resultante.

# Para realizar operaciones como la unión o la diferencia entre arreglos en Bash, podemos utilizar herramientas como "awk", "join" o "comm". Por ejemplo, para realizar la unión entre dos arreglos, podemos utilizar "awk" para concatenarlos y "sort -u" para eliminar duplicados:

# bash

set1=(1 2 3)
set2=(3 4 5)
printf "%s\n" "${set1[@]}" "${set2[@]}" | sort -u | while read -r element; do
    if [[ "$element" == "3" ]]; then
        echo "Found 3"
    fi
done

# En este código, creamos dos arreglos "set1" y "set2". Luego, utilizamos "echo" y "tr" para concatenarlos en una lista separada por saltos de línea, y "sort -u" para ordenarlos y eliminar duplicados. Finalmente, utilizamos "tr" nuevamente para convertir la lista de regreso en un arreglo separado por espacios y lo almacenamos en una variable llamada "union". La última línea del código imprime el arreglo resultante, que contiene la unión de los dos arreglos.

# Para realizar la diferencia entre dos arreglos en Bash, podemos utilizar la herramienta "comm" que muestra las líneas únicas que están en el primer archivo pero no en el segundo:

set1=(1 2 3)
set2=(3 4 5)
mapfile -t set1_sorted < <(printf '%s\n' "${set1[@]}" | sort)
mapfile -t set2_sorted < <(printf '%s\n' "${set2[@]}" | sort)
mapfile -t difference < <(comm -23 <(printf '%s\n' "${set1_sorted[@]}") <(printf '%s\n' "${set2_sorted[@]}"))
echo "${difference[@]}"

# En este código, creamos dos arreglos "set1" y "set2". Luego, utilizamos "echo" y "tr" para convertir cada arreglo en una lista separada por saltos de línea, y "sort" para ordenarlos. Utilizamos la herramienta "comm" para mostrar las líneas únicas que están en el primer archivo pero no en el segundo, y luego utilizamos "tr" para convertir la lista resultante en un arreglo separado por espacios. El resultado se almacena en la variable "difference", que contiene la diferencia entre los dos arreglos. La última línea del código imprime el arreglo resultante.
