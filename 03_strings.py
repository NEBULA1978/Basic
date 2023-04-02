# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=8643

### Strings ###

my_string = "Mi String"
my_other_string = 'Mi otro String'

print(len(my_string))
print(len(my_other_string))
print(my_string + " " + my_other_string)

my_new_line_string = "Este es un String\ncon salto de línea"
print(my_new_line_string)

my_tab_string = "\tEste es un String con tabulación"
print(my_tab_string)

my_scape_string = "\\tEste es un String \\n escapado"
print(my_scape_string)

# Formateo

name, surname, age = "Brais", "Moure", 35
print("Mi nombre es {} {} y mi edad es {}".format(name, surname, age))
print("Mi nombre es %s %s y mi edad es %d" % (name, surname, age))
print("Mi nombre es " + name + " " + surname + " y mi edad es " + str(age))
print(f"Mi nombre es {name} {surname} y mi edad es {age}")

# Desempaqueado de caracteres

language = "python"
a, b, c, d, e, f = language
print(a)
print(e)

# División

language_slice = language[1:3]
print(language_slice)

language_slice = language[1:]
print(language_slice)

language_slice = language[-2]
print(language_slice)

language_slice = language[0:6:2]
print(language_slice)

# Reverse

reversed_language = language[::-1]
print(reversed_language)

# Funciones del lenguaje

print(language.capitalize())
print(language.upper())
print(language.count("t"))
print(language.isnumeric())
print("1".isnumeric())
print(language.lower())
print(language.lower().isupper())
print(language.startswith("Py"))
print("Py" == "py")  # No es lo mismo


# /////////////////////////////////////////////////////////
# /////////////////////////////////////////////////////////
# /////////////////////////////////////////////////////////
print("////////////////////////////////////////")
print("////////////////////////////////////////")
print("////////////////////////////////////////")

# Concatenación de strings
greeting = "Hola"
subject = "Python"

concatenated = greeting + " " + subject
print(concatenated)

# Interpolación de strings
interpolated = f"{greeting} {subject}"
print(interpolated)

# Longitud de un string
length = len(greeting)
print(length)

# Repetición de un string
repeated = greeting * 3
print(repeated)

# Inclusión de un string dentro de otro
included = subject in greeting
print(included)

# Transformación de minúsculas a mayúsculas y viceversa
lower_case = greeting.lower()
print(lower_case)

upper_case = greeting.upper()
print(upper_case)

# Remplazo de una subcadena dentro de un string
replaced = greeting.replace("H", "J")
print(replaced)

# División de un string
splitted = greeting.split("o")
print(splitted)

# Comprobación de si un string comienza o termina con una subcadena determinada
starts_with = greeting.startswith("H")
ends_with = greeting.endswith("a")

print(starts_with)
print(ends_with)

# Extracción de una subcadena de un string
substring = greeting[1:3]
print(substring)

# Conteo de la aparición de una subcadena dentro de un string
count = greeting.count("o")
print(count)

# Comprobación si un string es alfanumérico o si está compuesto sólo por números
alphanumeric = greeting.isalnum()
numeric = "123".isdigit()

print(alphanumeric)
print(numeric)
