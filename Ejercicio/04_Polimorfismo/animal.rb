class Animal
  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
    
  end
  def hacer_sonido
    puts "#{@nombre} hace un sonido."
  end
  def mostrar_informacion
    puts "Animal - Nombre: #{@nombre}, Edad: #{@edad}"
  end
  def nombre
    @nombre
  end
  def edad
    @edad
  end
end
