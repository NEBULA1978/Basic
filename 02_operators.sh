#!/bin/bash

### Operadores Aritméticos ###

# Operaciones con enteros
echo $((3 + 4))
echo $((3 - 4))
echo $((3 * 4))
echo $(echo "scale=2; 3 / 4" | bc) # usamos bc para la división decimal
echo $((10 % 3))
echo $((10 / 3))
echo $((2 ** 3))
echo $((2 ** 3 + 3 - 7 / (1 / (4))))   # Resultado: 15
# Operaciones con cadenas de texto
echo "Hola " + "Python " + "¿Qué tal?"
echo "Hola " + "5"

# Operaciones mixtas
echo "Hola " * 5
echo "Hola " * $((2 ** 3))

my_float=$(echo "scale=2; 2.5 * 2" | bc)
echo "Hola " * $(echo $my_float | cut -d '.' -f 1)

### Operadores Comparativos ###

# Operaciones con enteros
echo $((3 > 4))
echo $((3 < 4))
echo $((3 >= 4))
echo $((4 <= 4))
echo $((3 == 4))
echo $((3 != 4))

# Operaciones con cadenas de texto
a="Hola"
b="Python"

echo "$a" '>' "$b" is $([[ "$a" > "$b" ]]; echo $?)
echo "$a" '<' "$b" is $([[ "$a" < "$b" ]]; echo $?)
echo "aaaa" '>=' "abaa" is $([[ "aaaa" > "abaa" ]]; echo $?)
echo "aaaa" 'len>=' "abaa" is $([[ ${#a} -ge ${#b} ]]; echo $?)
echo "$a" '<=' "$b" is $([[ "$a" <= "$b" ]]; echo $?)
echo "$a" '==' "Hola" is $([[ "$a" == "Hola" ]]; echo $?)
echo "$a" '!=' "$b" is $([[ "$a" != "$b" ]]; echo $?)

### Operadores Lógicos ###

# Basada en el Álgebra de Boole https://es.wikipedia.org/wiki/%C3%81lgebra_de_Boole
echo $((3 > 4 && "Hola" > "Python"))   # Resultado: 0
echo $((3 > 4 || "Hola" > "Python"))   # Resultado: 1
echo $((3 < 4 && "Hola" < "Python"))   # Resultado: 0
echo $((3 < 4 || "Hola" > "Python"))   # Resultado: 1
echo $((3 < 4 || ("Hola" > "Python" && 4 == 4)))   # Resultado: 1
echo $((!(3 > 4)))   # Resultado: 1

# Operadores aritméticos
x=3
y=4

suma=$((x + y))
resta=$((x - y))
multiplicacion=$((x * y))
division=$(echo "scale=2; $x / $y" | bc) # usamos bc para la división decimal
residuo=$((x % y))
cociente=$((x / y))
potencia=$((x ** y))

echo "La suma de $x y $y es $suma"
echo "La resta de $x y $y es $resta"
echo "La multiplicación de $x y $y es $multiplicacion"
echo "La división de $x y $y es $division"
echo "El residuo de la división de $x y $y es $residuo"
echo "El cociente de la división de $x y $y es $cociente"
echo "La potencia de $x elevado a $y es $potencia"
