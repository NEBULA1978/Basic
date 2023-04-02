#!/bin/bash

# Hola Mundo
# Nuestro hola mundo en Bash

echo "Hola Bash" # Imprime "Hola Bash" en la consola
echo 'Hola Bash' # Imprime 'Hola Bash' en la consola

# Comentarios
# Esto es un
# comentario
# en varias lineas

# Cómo consultar el tipo de dato
tipo_str="Soy un dato str"
tipo_int=5
tipo_float=1.5
tipo_bool_true=true
tipo_bool_false=false
tipo_none=""

# Impresión de resultados
resultados="El tipo de 'Soy un dato str' es string\n" # Almacena el resultado del tipo de dato 'string'
resultados+="El tipo de 5 es integer\n" # Concatena el resultado del tipo de dato 'integer'
resultados+="El tipo de 1.5 es float\n" # Concatena el resultado del tipo de dato 'float'
resultados+="El tipo de true es boolean\n" # Concatena el resultado del tipo de dato 'boolean' (true)
resultados+="El tipo de false es boolean\n" # Concatena el resultado del tipo de dato 'boolean' (false)
resultados+="El tipo de 'Mi cadena de texto' es string\n" # Concatena el resultado del tipo de dato 'string'
resultados+="El tipo de '' (cadena vacía) es none" # Concatena el resultado del tipo de dato 'none' (cadena vacía)

echo -e "$resultados" # Imprime los resultados concatenados en la consola
