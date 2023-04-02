#!/bin/bash

# En Bash, una estructura de datos similar a los conjuntos de Python son los arrays. Al igual que los conjuntos, los arrays son una colección de elementos que pueden ser accedidos y modificados en función de su índice. Sin embargo, a diferencia de los conjuntos, los arrays sí pueden contener elementos duplicados.

# A continuación te muestro cómo crear y manipular arrays en Bash:

# Definición de un array vacío
my_array=()

# Definición de un array con elementos
my_other_array=("Brais" "Moure" "35")
echo "${my_other_array[0]}" # Agregar comillas dobles para evitar globbing y word splitting

# Acceder a un elemento del array
echo ${my_other_array[0]}

# Agregar elementos al array
my_other_array+=("MoureDev")
my_other_array+=("MoureDev") # Los arrays sí admiten elementos duplicados
echo "${my_other_array[@]}"  # Agregar comillas dobles para evitar globbing y word splitting

# Verificar si un elemento está en el array
elemento="Moure"
encontrado=0
for i in "${my_other_array[@]}"; do
    if [[ "$i" == "$elemento" ]]; then
        encontrado=1
        break
    fi
done
if [[ $encontrado -eq 1 ]]; then
    echo "$elemento está en el array"
fi

# Eliminar un elemento del array
unset "${my_other_array[0]}"
echo "${my_other_array[@]}"  # Agregar comillas dobles para evitar globbing y word splitting

# Vaciar el array
my_other_array=()
echo "${my_other_array[@]}" # Agregar comillas dobles para evitar globbing y word splitting

# Convertir un array en una lista
my_array=("Brais" "Moure" "35")
my_list=("${my_array[@]}") # Agregar comillas dobles para evitar globbing y word splitting
echo "${my_list[0]}"       # Agregar comillas dobles para evitar globbing y word splitting

# Crear otro array
my_other_array=("Kotlin" "Swift" "Python")

# Operaciones con arrays
my_new_array=("Brais" "Moure" "35" "Kotlin" "Swift" "Python")
echo "${my_new_array[@]}" # Agregar comillas dobles para evitar la re-división de elementos

# Ten en cuenta que a diferencia de los conjuntos de Python, los arrays de Bash no tienen un método difference() para calcular la diferencia entre dos arrays. En su lugar, puedes utilizar un bucle for para comparar los elementos de ambos arrays y eliminar los elementos duplicados manualmente utilizando el comando unset.
