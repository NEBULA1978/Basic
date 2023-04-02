# Definición de un conjunto vacío
my_set = set()

# Definición de un diccionario vacío (no es un conjunto)
my_other_set = {}

# Comprobación de que my_set es de tipo set y my_other_set es de tipo dict
print(type(my_set))
print(type(my_other_set))  # Inicialmente es un diccionario

# Definición de un conjunto con tres elementos
my_other_set = {"Brais", "Moure", 35}

# Comprobación de la longitud del conjunto
print(len(my_other_set))

# Agregar un elemento al conjunto
my_other_set.add("MoureDev")

# Imprimir el conjunto (los elementos no tienen un orden específico)
print(my_other_set)

# Intentar agregar un elemento repetido al conjunto (no se agrega porque los conjuntos no admiten elementos duplicados)
my_other_set.add("MoureDev")
print(my_other_set)

# Verificar si un elemento está en el conjunto
print("Moure" in my_other_set)
print("Mouri" in my_other_set)

# Eliminar un elemento del conjunto
my_other_set.remove("Moure")
print(my_other_set)

# Vaciar el conjunto
my_other_set.clear()
print(len(my_other_set))

# Borrar el conjunto
del my_other_set
# print(my_other_set) NameError: name 'my_other_set' is not defined

# Convertir un conjunto en una lista
my_set = {"Brais", "Moure", 35}
my_list = list(my_set)
print(my_list)
print(my_list[0])

# Crear otro conjunto
my_other_set = {"Kotlin", "Swift", "Python"}

# Operaciones con conjuntos
my_new_set = my_set.union(my_other_set)  # Unión de dos conjuntos
print(my_new_set.union(my_new_set).union(my_set).union(
    {"JavaScript", "C#"}))  # Unión de varios conjuntos
print(my_new_set.difference(my_set))  # Diferencia entre dos conjuntos

# Los conjuntos(sets) son una colección no ordenada y sin elementos repetidos en Python. Puedes definir un conjunto vacío utilizando set(), y luego agregar elementos con el método add(). Los conjuntos también tienen los métodos remove() para eliminar elementos, y clear() para eliminar todos los elementos del conjunto. Además, los conjuntos son útiles para realizar operaciones matemáticas como unión, intersección y diferencia entre conjuntos, que se pueden hacer utilizando los métodos union(), intersection() y difference(), respectivamente.
