# Un set es una estructura de datos en Python que permite almacenar elementos únicos, sin repetir valores. Se utiliza para realizar operaciones como la eliminación de elementos duplicados o la búsqueda de elementos en una estructura de datos.

# Para definir un set, podemos utilizar la palabra reservada set o la sintaxis {}:

my_set = set()
my_other_set = set()

# Para agregar elementos a un set, podemos utilizar el método add:

my_other_set.add("MoureDev")

# Es importante destacar que un set no permite elementos repetidos, por lo que si intentamos agregar un elemento que ya existe en el set, no se producirá ningún cambio.

# Para realizar búsquedas en un set, podemos utilizar la operación in:

print("MoureDev" in my_other_set)

# También podemos eliminar elementos de un set utilizando el método remove:
my_other_set.remove("MoureDev")

# Además, podemos realizar operaciones como la unión o la diferencia entre sets mediante los métodos union y difference:

my_new_set = my_set.union(my_other_set)
print(my_new_set.difference(my_set))

# Por último, es posible transformar un set a una lista utilizando la función list:
my_list = list(my_set)
