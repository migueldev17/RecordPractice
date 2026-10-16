require_relative 'Animal'
class Perro < Animal
  def initialize(nombre, edad)
    super(nombre, edad)
  end

  def hacer_sonido
    puts "#{@nombre} ladra."
  end
end
