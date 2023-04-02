# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc?t=21442

### Conditionals ###

# if

my_condition = False

if my_condition:  # Es lo mismo que if my_condition == True:
    print("Se ejecuta la condición del if")

my_condition = 5 * 5

if my_condition == 10:
    print("Se ejecuta la condición del segundo if")

# if, elif, else

if my_condition > 10 and my_condition < 20:
    print("Es mayor que 10 y menor que 20")
elif my_condition == 25:
    print("Es igual a 25")
else:
    print("Es menor o igual que 10 o mayor o igual que 20 o distinto de 25")

print("La ejecución continúa")

# Condicional con ispección de valor

my_string = ""

if not my_string:
    print("Mi cadena de texto es vacía")

if my_string == "Mi cadena de textoooooo":
    print("Estas cadenas de texto coinciden")

# Ejercicio

# Definir los precios por kilómetro para cada uno de los tres vehículos
precios = {
    "automóvil": 0.5,
    "autobús": 0.8,
    "camión": 1.2
}

# Solicitar la información del vehículo y la distancia recorrida
tipo_vehiculo = int(input("Introduce el tipo de vehículo (1: automóvil, 2: autobús, 3: camión): "))
distancia_recorrida = float(input("Introduce la distancia recorrida en kilómetros: "))

# Calcular la cantidad que recauda el vehículo
if tipo_vehiculo == 1:
    tipo_vehiculo_str = "automóvil"
elif tipo_vehiculo == 2:
    tipo_vehiculo_str = "autobús"
elif tipo_vehiculo == 3:
    tipo_vehiculo_str = "camión"
else:
    print("Tipo de vehículo no válido")
    exit()

precio_por_kilometro = precios[tipo_vehiculo_str]
recaudacion = precio_por_kilometro * distancia_recorrida

# Mostrar la cantidad que recauda el vehículo
print("El {} recauda {:.2f} por recorrer {} kilómetros".format(tipo_vehiculo_str, recaudacion, distancia_recorrida))


# El resultado de este código sería:

# Introduce el tipo de vehículo (1: automóvil, 2: autobús, 3: camión): 2
# Introduce la distancia recorrida en kilómetros: 100
# El autobús recauda