# Lista para almacenar el tipo de vehículo y su tarifa correspondiente
tarifas = [("automóvil", 10), ("camión", 20), ("autobús", 30)]

# Diccionario para almacenar la cantidad de vehículos que han pasado por el peaje y su tarifa total
recaudación = {"automóvil": 0, "camión": 0, "autobús": 0, "tarifa_total": 0}

while True:
    # Preguntar al usuario el tipo de vehículo
    opcion = input("Introduce el número para elegir el tipo de vehículo (1: automóvil, 2: camión, 3: autobús o 0 para salir): ")
    
    if opcion == "0":
        break
    
    # Buscar el tipo de vehículo correspondiente a la opción
    tipo_vehiculo = ""
    tarifa = 0
    if opcion == "1":
        tipo_vehiculo = "automóvil"
        tarifa = 10
    elif opcion == "2":
        tipo_vehiculo = "camión"
        tarifa = 20
    elif opcion == "3":
        tipo_vehiculo = "autobús"
        tarifa = 30
    else:
        print("No existe ese número. Por favor, introduzca un número válido.")
        continue
    
    # Aumentar la cantidad de vehículos y la tarifa total para el tipo de vehículo
    recaudación[tipo_vehiculo] += 1
    recaudación["tarifa_total"] += tarifa

# Imprimir la recaudación total
print("Recaudación total:", recaudación["tarifa_total"], "dólares")

# Imprimir la cantidad de vehículos y la recaudación por tipo de vehículo
for tv, t in tarifas:
    print("Cantidad de", tv, ":", recaudación[tv])
    print("Recaudación por", tv, ":", recaudación[tv] * t, "dólares")


# En este código, se agrega una comprobación adicional para verificar si el número introducido por el usuario no corresponde a ninguno de los tipos de vehículo disponibles. En ese caso, se muestra un mensaje de error y se vuelve al inicio del bucle sin aumentar la cantidad de vehículos ni la tarifa total. De lo contrario, se sigue pidiendo el numero correcto.