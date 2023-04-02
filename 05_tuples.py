# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=14711

### Tuples ###

# Definición

my_tuple = tuple()
my_other_tuple = ()

my_tuple = (35, 1.77, "Brais", "Moure", "Brais")
my_other_tuple = (35, 60, 30)

print(my_tuple)
print(type(my_tuple))

# Acceso a elementos y búsqueda

print(my_tuple[0])
print(my_tuple[-1])
# print(my_tuple[4]) IndexError
# print(my_tuple[-6]) IndexError

print(my_tuple.count("Brais"))
print(my_tuple.index("Moure"))
print(my_tuple.index("Brais"))

# my_tuple[1] = 1.80 'tuple' object does not support item assignment

# Concatenación

my_sum_tuple = my_tuple + my_other_tuple
print(my_sum_tuple)

# Subtuplas

print(my_sum_tuple[3:6])

# Tupla mutable con conversión a lista

my_tuple = list(my_tuple)
print(type(my_tuple))

my_tuple[4] = "MoureDev"
my_tuple.insert(1, "Azul")
my_tuple = tuple(my_tuple)
print(my_tuple)
print(type(my_tuple))

# Eliminación

# del my_tuple[2] TypeError: 'tuple' object doesn't support item deletion

del my_tuple
# print(my_tuple) NameError: name 'my_tuple' is not defined

# Tarifas para diferentes tipos de vehículos
tarifas = {
    1: 10,
    2: 20,
    3: 30
}

# Bucle para recoger el tipo de vehículo y calcular la tarifa
while True:
    # Preguntamos por el tipo de vehículo
    tipo = input("Introduce el número correspondiente al tipo de vehículo (1 para automóvil, 2 para camión, 3 para autobús o 0 para salir): ")
    
    # Convertimos la entrada en un número entero
    tipo = int(tipo)
    
    # Si se introduce 0, salimos del bucle
    if tipo == 0:
        break
    
    # Si el tipo introducido no está en la lista de tipos disponibles, se informa y se vuelve a preguntar
    if tipo not in tarifas:
        print("Tipo de vehículo no reconocido, inténtalo de nuevo.")
        continue
    
    # Si el tipo introducido está disponible, se calcula la tarifa
    tarifa = tarifas[tipo]
    tipo_vehiculo = ""
    if tipo == 1:
        tipo_vehiculo = "automóvil"
    elif tipo == 2:
        tipo_vehiculo = "camión"
    elif tipo == 3:
        tipo_vehiculo = "autobús"
    print(f"La tarifa para un {tipo_vehiculo} es de {tarifa} euros.")

# las tuplas son inmutables, por lo que no es posible realizar operaciones de inserción, actualización o eliminación en ellas. Por tanto, no es posible hacer un ejemplo con tuplas similar al que se hizo con listas. Sin embargo, a continuación se muestra un ejemplo de cálculo de tarifa para diferentes tipos de vehículos utilizando tuplas: