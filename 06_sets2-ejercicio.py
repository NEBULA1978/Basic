
# Aquí está un ejemplo de código que utiliza sets para calcular la intersección y la unión de dos conjuntos de carreteras en una autopista:

# Definir los conjuntos de carreteras en la autopista
autopista_1 = set(["Carretera A", "Carretera B", "Carretera C", "Carretera D"])
autopista_2 = set(["Carretera B", "Carretera C", "Carretera E", "Carretera F"])

# Calcular la intersección de las carreteras que están presentes en ambas autopistas
carreteras_en_comun = autopista_1.intersection(autopista_2)
print("Las carreteras en común son:", carreteras_en_comun)

# Calcular la unión de todas las carreteras en ambas autopistas
todas_las_carreteras = autopista_1.union(autopista_2)
print("Todas las carreteras son:", todas_las_carreteras)

