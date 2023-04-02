# Clase en vídeo: https://youtu.be/Kp4Mvapo5kc

### Hola Mundo ###

# Nuestro hola mundo en Python
print("Hola Python")
print('Hola Python')

# Esto es un comentario

"""
Este es un
comentario
en varias líneas
"""

'''
Este también es un
comentario
en varias líneas
'''

# Cómo consultar el tipo de dato
print(type("Soy un dato str"))  # Tipo 'str'
print(type(5))  # Tipo 'int'
print(type(1.5))  # Tipo 'float'
print(type(3 + 1j))  # Tipo 'complex'
print(type(True))  # Tipo 'bool'
print(type(print("Mi cadena de texto")))  # Tipo 'NoneType'

tipo_str = type("Soy un dato str")
tipo_int = type(5)
tipo_float = type(1.5)
tipo_complex = type(3 + 1j)
tipo_bool = type(True)
tipo_none = type(print("Mi cadena de texto"))

resultados = "El tipo de 'Soy un dato str' es " + str(tipo_str) + "\n"
resultados += "El tipo de 5 es " + str(tipo_int) + "\n"
resultados += "El tipo de 1.5 es " + str(tipo_float) + "\n"
resultados += "El tipo de 3 + 1j es " + str(tipo_complex) + "\n"
resultados += "El tipo de True es " + str(tipo_bool) + "\n"
resultados += "El tipo de print('Mi cadena de texto') es " + str(tipo_none)

print(resultados)