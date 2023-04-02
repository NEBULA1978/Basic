# # Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=10872

# ### Lists ###

# # Definición

# my_list = list()
# my_other_list = []

# print(len(my_list))

# my_list = [35, 24, 62, 52, 30, 30, 17]

# print(my_list)
# print(len(my_list))

# my_other_list = [35, 1.77, "Brais", "Moure"]

# print(type(my_list))
# print(type(my_other_list))

# # Acceso a elementos y búsqueda

# print(my_other_list[0])
# print(my_other_list[1])
# print(my_other_list[-1])
# print(my_other_list[-4])
# print(my_list.count(30))
# # print(my_other_list[4]) IndexError
# # print(my_other_list[-5]) IndexError

# print(my_other_list.index("Brais"))

# age, height, name, surname = my_other_list
# print(name)

# name, height, age, surname = my_other_list[2], my_other_list[1], my_other_list[0], my_other_list[3]
# print(age)

# # Concatenación

# print(my_list + my_other_list)
# #print(my_list - my_other_list)

# # Creación, inserción, actualización y eliminación

# my_other_list.append("MoureDev")
# print(my_other_list)

# my_other_list.insert(1, "Rojo")
# print(my_other_list)

# my_other_list[1] = "Azul"
# print(my_other_list)

# my_other_list.remove("Azul")
# print(my_other_list)

# my_list.remove(30)
# print(my_list)

# print(my_list.pop())
# print(my_list)

# my_pop_element = my_list.pop(2)
# print(my_pop_element)
# print(my_list)

# del my_list[2]
# print(my_list)

# # Operaciones con listas

# my_new_list = my_list.copy()

# my_list.clear()
# print(my_list)
# print(my_new_list)

# my_new_list.reverse()
# print(my_new_list)

# my_new_list.sort()
# print(my_new_list)

# # Sublistas

# print(my_new_list[1:3])

# # Cambio de tipo

# my_list = "Hola Python"
# print(my_list)
# print(type(my_list))


# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=10872

### Lists ###

# Definición

# Creación de una lista vacía
my_list = list()
my_other_list = []

# Longitud de la lista (0 en este caso)
print(len(my_list))

# Creación de una lista con valores
my_list = [35, 24, 62, 52, 30, 30, 17]

# Impresión de la lista y su longitud
print(my_list)
print(len(my_list))

# Creación de otra lista con valores de diferentes tipos
my_other_list = [35, 1.77, "Brais", "Moure"]

# Impresión de los tipos de las listas
print(type(my_list))
print(type(my_other_list))

# Acceso a elementos y búsqueda

# Acceso al primer elemento de la lista
print(my_other_list[0])

# Acceso al segundo elemento de la lista
print(my_other_list[1])

# Acceso al último elemento de la lista
print(my_other_list[-1])

# Acceso al penúltimo elemento de la lista
print(my_other_list[-4])

# Contar el número de veces que un elemento aparece en la lista
print(my_list.count(30))

# Intento de acceso a un elemento fuera de los límites de la lista (lanza un error)
# print(my_other_list[4]) IndexError
# print(my_other_list[-5]) IndexError

# Búsqueda de un elemento en la lista
print(my_other_list.index("Brais"))

# Desempaquetado de la lista
age, height, name, surname = my_other_list
print(name)

# Cambio del orden de los elementos al desempaquetar la lista
name, height, age, surname = my_other_list[2], my_other_list[1], my_other_list[0], my_other_list[3]
print(age)

# Concatenación

# Concatenación de dos listas
print(my_list + my_other_list)

# Creación, inserción, actualización y eliminación

# Añadir un elemento al final de la lista
# EJEJMPLO1
# import os

# current_path = "/home"

# while True:
#     print("Directorio actual:", current_path)
#     print("Contenido:")
#     contents = os.listdir(current_path)
#     for i, content in enumerate(contents):
#         print(f"{i + 1}. {content}")
    
#     selected = input("Seleccione el número de la carpeta a entrar (0 para salir): ")
#     selected = int(selected)
#     if selected == 0:
#         break
#     else:
#         content_path = os.path.join(current_path, contents[selected - 1])
#         if os.path.isdir(content_path):
#             current_path = content_path
#         else:
#             print(f"{contents[selected - 1]} no es una carpeta, seleccione otro.")

# Aquí está un ejemplo de código que simula un peaje de autopistas con tres tipos de vehículos:

# Lista para almacenar el tipo de vehículo y su tarifa correspondiente
tarifas = [("automóvil", 10), ("camión", 20), ("autobús", 30)]

# Diccionario para almacenar la cantidad de vehículos que han pasado por el peaje y su tarifa total
recaudación = {"automóvil": 0, "camión": 0, "autobús": 0, "tarifa_total": 0}

while True:
    # Preguntar al usuario el tipo de vehículo
    tipo_vehiculo = input("Introduce el tipo de vehículo (automóvil, camión, autobús o 0 para salir): ")
    
    if tipo_vehiculo == "0":
        break
    
    # Buscar la tarifa correspondiente para el tipo de vehículo
    tarifa = 0
    for tv, t in tarifas:
        if tv == tipo_vehiculo:
            tarifa = t
            break
    
    # Aumentar la cantidad de vehículos y la tarifa total para el tipo de vehículo
    recaudación[tipo_vehiculo] += 1
    recaudación["tarifa_total"] += tarifa

# Imprimir la recaudación total
print("Recaudación total:", recaudación["tarifa_total"], "dólares")

# Imprimir la cantidad de vehículos y la recaudación por tipo de vehículo
for tv, t in tarifas:
    print("Cantidad de", tv, ":", recaudación[tv])
    print("Recaudación por", tv, ":", recaudación[tv] * t, "dólares")


# Este programa le pregunta al usuario el tipo de vehículo y luego busca la tarifa correspondiente para ese tipo de vehículo. Luego, aumenta la cantidad de vehículos y la tarifa total para ese tipo de vehículo en el diccionario recaudación. El programa continúa pidiendo el tipo de vehículo hasta que el usuario introduzca "0". Finalmente, el programa imprime la recaudación total y la cantidad de vehículos y la recaudación por tipo de vehículo.