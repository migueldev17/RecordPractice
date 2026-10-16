require_relative 'animal'
require_relative 'gato'
require_relative 'perro'

Gata1 = Gato.new("Mimi", 3)
Perro1 = Perro.new("Firulais", 5)
puts "Nombre del gato: #{Gata1.nombre}, Edad: #{Gata1.edad}"
puts "Este es el sonido que hace el gato: #{Gata1.hacer_sonido}"

puts "Nombre del perro: #{Perro1.nombre}, Edad: #{Perro1.edad}"
puts "Este es el sonido que hace el perro: #{Perro1.hacer_sonido}"

# Creando un array de animales
puts "\nMostrando información de los animales en el primer array:"
animales = [Gata1, Perro1]
animales.each do |animal|
  animal.mostrar_informacion
  animal.hacer_sonido
end
# crearemos otro array de animales y le agregaremos un nuevo animal
puts "\nMostrando información de los animales en el segundo array:"
Gato2 = Gato.new("Luna", 2)
Gato3 = Gato.new("Simba", 4)
Gato4 = Gato.new("Nala", 1)
Perro2 = Perro.new("Rex", 6)
Perro3 = Perro.new("Max", 3)
animales2 = [Gato2, Gato3, Gato4, Perro2, Perro3]
animales2.each do |animal|
  animal.mostrar_informacion
  animal.hacer_sonido
end
# Imprimer cual de estos animales es mayor de 2 años y cual es menor de 2 años
puts "\nMostrando animales mayores y menores de 2 años:"
animales2.each do |animal|
  if animal.edad > 2
    puts "#{animal.nombre} es mayor de 2 años."
  else
    puts "#{animal.nombre} es menor de 2 años."
  end
end
# Imprimir un arreglo con map
puts "\nMostrando un arreglo con map de los nombres de los animales:"
nombres_animales = animales2.map {|animal| animal.nombre }
puts nombres_animales