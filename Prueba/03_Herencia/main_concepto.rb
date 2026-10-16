require_relative 'vehiculo'
require_relative 'camion'
 camion1 = Camion.new("ABC123", 100, "Rojo", 6, 5000)
camion1.mostrar_informacion
camion1.cambiar_color("Azul")
camion1.agregar_llantas(2)
camion1.cargar(3000) # Carga válida
camion1.cargar(2500) # Intento de carga mayor a la capacidad restante   
camion1.mostrar_informacion
camion1.cargar(2000) # Carga válida
camion1.mostrar_informacion
camion1.consumir_combustible() # Consumo válido de combustible
camion1.consumir_combustible() # Intento de consumo mayor al combustible disponible
camion1.mostrar_informacion
camion1.recargar_combustible(50) # Repostaje válido de combustible
camion1.mostrar_informacion