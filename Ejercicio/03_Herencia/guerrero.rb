require_relative 'Jugador'
class Guerrero < Jugador
  def initialize(nombre, vida, escudo)
    super(nombre, vida) # Llamamos al constructor de la clase padre (Jugador)
    @escudo = escudo
  end
  def usar_escudo(cantidad)
    if @escudo - cantidad < 0
      puts "#{@nombre} no tiene suficiente escudo para usar."
    else
      @escudo -= cantidad
      puts "#{@nombre} ha usado #{cantidad} de escudo. Escudo restante: #{@escudo}"
    end
  end
  def mostrar_informacion
    puts "Guerrero - Nombre: #{@nombre}, Vida: #{@vida}, Escudo: #{@escudo}"
  end
end
