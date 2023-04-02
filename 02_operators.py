# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=5665

### Operadores Aritméticos ###

# Operaciones con enteros
print(3 + 4)
print(3 - 4)
print(3 * 4)
print(3 / 4)
print(10 % 3)
print(10 // 3)
print(2 ** 3)
print(2 ** 3 + 3 - 7 / 1 // 4)

# Operaciones con cadenas de texto
print("Hola " + "Python " + "¿Qué tal?")
print("Hola " + str(5))

# Operaciones mixtas
print("Hola " * 5)
print("Hola " * (2 ** 3))

my_float = 2.5 * 2
print("Hola " * int(my_float))

### Operadores Comparativos ###

# Operaciones con enteros
print(3 > 4)
print(3 < 4)
print(3 >= 4)
print(4 <= 4)
print(3 == 4)
print(3 != 4)

# Operaciones con cadenas de texto
print("Hola" > "Python")
print("Hola" < "Python")
print("aaaa" >= "abaa")  # Ordenación alfabética por ASCII
print(len("aaaa") >= len("abaa"))  # Cuenta caracteres
print("Hola" <= "Python")
print("Hola" == "Hola")
print("Hola" != "Python")

### Operadores Lógicos ###

# Basada en el Álgebra de Boole https://es.wikipedia.org/wiki/%C3%81lgebra_de_Boole
print(3 > 4 and "Hola" > "Python")
print(3 > 4 or "Hola" > "Python")
print(3 < 4 and "Hola" < "Python")
print(3 < 4 or "Hola" > "Python")
print(3 < 4 or ("Hola" > "Python" and 4 == 4))
print(not (3 > 4))


# Operadores aritméticos
x = 3
y = 4

suma = x + y
resta = x - y
multiplicacion = x * y
division = x / y
residuo = x % y
cociente = x // y
potencia = x ** y

print("La suma de", x, "y", y, "es", suma)
print("La resta de", x, "y", y, "es", resta)
print("La multiplicación de", x, "y", y, "es", multiplicacion)
print("La división de", x, "y", y, "es", division)
print("El residuo de la división de", x, "y", y, "es", residuo)
print("El cociente de la división de", x, "y", y, "es", cociente)
print("La potencia de", x, "elevado a", y, "es", potencia)

# Operadores comparativos
a = "Hola"
b = "Python"

igual = a == b
diferente = a != b
mayor = a > b
menor = a < b
mayor_igual = a >= b
menor_igual = a <= b

print("¿Es", a, "igual a", b, "?", igual)
print("¿Es", a, "diferente a", b, "?", diferente)
print("¿Es", a, "mayor que", b, "?", mayor)
print("¿Es", a, "menor que", b, "?", menor)
print("¿Es", a, "mayor o igual que", b, "?", mayor_igual)
print("¿Es", a, "menor o igual que", b, "?", menor_igual)

# Operadores lógicos
c = 3
d = 4

and_logico = c > d and a > b
or_logico = c > d or a > b
not_logico = not (c > d)

print("El resultado de", c, ">", d, "and", a, ">", b, "es", and_logico)
print("El resultado de", c, ">", d, "or", a, ">", b, "es", or_logico)
print("El resultado de not", c, ">", d, "es", not_logico)

# En los ejemplos anteriores, hemos utilizado los operadores aritméticos (+, -, *, /, %, //, **), comparativos (==, !=, >, <, >=, <=) y lógicos (and, or, not) para realizar diferentes operaciones y comparaciones.