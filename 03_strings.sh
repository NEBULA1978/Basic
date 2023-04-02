#!/bin/bash

# Strings
my_string="Mi String"
my_other_string='Mi otro String'

echo ${#my_string}
echo ${#my_other_string}
echo "${my_string} ${my_other_string}"

my_new_line_string="Este es un String
con salto de línea"
echo "${my_new_line_string}"

my_tab_string=$'\tEste es un String con tabulación'
echo "${my_tab_string}"

my_escape_string="\\tEste es un String \\n escapado"
echo "${my_escape_string}"

# Formateo
name="Brais"
surname="Moure"
age=35

echo "Mi nombre es ${name} ${surname} y mi edad es ${age}"
echo "Mi nombre es ${name} ${surname} y mi edad es ${age}"
echo "Mi nombre es ${name} ${surname} y mi edad es ${age}"
echo "Mi nombre es $name $surname y mi edad es $age"

# Desempaqueado de caracteres
language="python"

a=${language:0:1}
b=${language:1:1}
c=${language:2:1}
d=${language:3:1}
e=${language:4:1}
f=${language:5:1}

echo "$a $e"

# División
language_slice=${language:1:2}
echo "$language_slice"

language_slice=${language:1}
echo "$language_slice"

language_slice=${language:(-2)}
echo "$language_slice"

language="python"
language_slice=""
for ((i = 0; i < 6; i += 2)); do
    language_slice+="${language:i:1}"
done
echo "$language_slice"
# Reverse
reversed_language=$(echo "$language" | rev)
echo "$reversed_language"

# Funciones del lenguaje
echo "${language^}"
echo "${language^^}"
echo "${language//[^t]/}"
echo "${language: -1}"
echo "1" | grep -q "^[0-9]*$"
echo "${language,,}"
echo "${language,,}" | grep -q "^[a-z]*$"
echo "${language#Py}"
[[ "Py" == "py" ]] && echo "No es lo mismo"

# Concatenación de strings
greeting="Hola"
subject="Python"

concatenated="$greeting $subject"
echo "$concatenated"

# Interpolación de strings
interpolated="$greeting $subject"
echo "$interpolated"

# Longitud de un string
length=${#greeting}
echo "$length"

# Repetición de un string
repeated=$(echo "$greeting$greeting$greeting")
echo "$repeated"

# Inclusión de un string dentro de otro
if [[ "$greeting" == *"$subject"* ]]; then
    echo "La cadena $subject está incluida en $greeting"
else
    echo "La cadena $subject no está incluida en $greeting"
fi

# Transformación de minúsculas a mayúsculas y viceversa
lower_case=$(echo "$greeting" | tr '[:upper:]' '[:lower:]')
echo "$lower_case"

upper_case=$(echo "$greeting" | tr '[:lower:]' '[:upper:]')
echo "$upper_case"

# Remplazo de una subcadena dentro de un string
replaced=$(echo "$greeting" | sed 's/H/J/')
echo "$replaced"

# División de un string
splitted=(${greeting//o/ })
echo "${splitted[@]}"

# Comprobación de si un string comienza o termina con una subcadena determinada
if [[ "$greeting" == "H"* ]]; then
    echo "$greeting comienza con H"
else
    echo "$greeting no comienza con H"
fi

if [[ "$greeting" == *"a" ]]; then
    echo "$greeting termina con a"
else
    echo "$greeting no termina con a"
fi
# Extracción de una subcadena de un string
substring=${greeting:1:2}
echo "$substring"

# Conteo de la aparición de una subcadena dentro de un string

count=$(echo "$greeting" | awk -F'o' '{print NF-1}')
echo "$count"

# Comprobación si un string es alfanumérico o si está compuesto sólo por números

if [[ "$greeting" =~ ^[[:alnum:]]+$ ]]; then
    echo "$greeting es alfanumérico"
else
    echo "$greeting no es alfanumérico"
fi

if [[ "123" =~ ^[0-9]+$ ]]; then
    echo "123 es numérico"
else
    echo "123 no es numérico"
fi
