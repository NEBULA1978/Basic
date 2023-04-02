# Definir la autopista y sus carreteras
autopista = {
    "nombre": "Autopista del Norte",
    "carreteras": {
        "Carretera A": {"longitud": 100, "ciudades_atraviesa": ["Ciudad 1", "Ciudad 2"]},
        "Carretera B": {"longitud": 200, "ciudades_atraviesa": ["Ciudad 2", "Ciudad 3"]},
        "Carretera C": {"longitud": 150, "ciudades_atraviesa": ["Ciudad 3", "Ciudad 4"]}
    }
}

# Acceder a la información sobre la carretera B
carretera_b = autopista["carreteras"]["Carretera B"]
print("Información sobre la Carretera B:", carretera_b)

# Calcular la longitud total de todas las carreteras
longitud_total = 0
for carretera in autopista["carreteras"].values():
    longitud_total += carretera["longitud"]

print("La longitud total de las carreteras en la autopista es:", longitud_total)

# Obtener una lista de todas las ciudades atravesadas por la autopista
ciudades_atravesadas = []
for carretera in autopista["carreteras"].values():
    ciudades_atravesadas.extend(carretera["ciudades_atraviesa"])

print("Las ciudades atravesadas por la autopista son:", ciudades_atravesadas)

# El resultado de este código sería:

# Información sobre la Carretera B: {'longitud': 200, 'ciudades_atraviesa': ['Ciudad 2', 'Ciudad 3']}
# La longitud total de las carreteras en la autopista es: 450
# Las ciudades atravesadas por la autopista son: ['Ciudad 1', 'Ciudad 2', 'Ciudad 2', 'Ciudad 3', 'Ciudad 3', 'Ciudad 4']
