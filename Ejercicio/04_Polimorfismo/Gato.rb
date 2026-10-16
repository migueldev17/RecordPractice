require_relative 'Animal'
class Gato < Animal
  def initialize(nombre, edad)
    super(nombre, edad)
  end

  def hacer_sonido
    puts "#{@nombre} maulla."
  end
end
