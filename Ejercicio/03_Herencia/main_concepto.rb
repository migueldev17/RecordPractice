require_relative 'Guerrero'
require_relative 'Mago'
jugador1 = Guerrero.new("Juan", 100, 20)
jugador1.mostrar_informacion
jugador1.usar_escudo(10) # Uso válido de escudo
jugador1.usar_escudo(15) # Intento de uso de escudo mayor al disponible
jugador1.mostrar_informacion
jugador2 = Mago.new("Ana", 80, 30)
jugador2.mostrar_informacion
jugador2.lanzar_hechizo(20) # Lanzamiento válido de hechizo
jugador2.lanzar_hechizo(15) # Intento de lanzamiento de hech
jugador2.mostrar_informacion
