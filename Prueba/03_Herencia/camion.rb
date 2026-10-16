require_relative 'vehiculo'
class Camion < Vehiculo
  def initialize(placa, combustible, color, llantas, carga_maxima)
    super(placa, combustible)
    @color = color
    @llantas = llantas
    @carga_maxima = carga_maxima
  end
  def mostrar_informacion
    puts "Camion - Placa: #{@placa}, Combustible: #{@combustible}, Color: #{@color}, Llantas: #{@llantas}"
  end
  def cambiar_color(nuevo_color)
    @color = nuevo_color
    puts "El color del camión ha sido cambiado a: #{@color}"
  end
  def agregar_llantas(cantidad)
    @llantas += cantidad
    puts "Se han agregado #{cantidad} llantas. Total de llantas: #{@llantas}"
  end
  def cargar(cantidad)
    if @carga_maxima - cantidad < 0
      puts "No se puede cargar más de #{@carga_maxima} unidades."
    else
      @carga_maxima -= cantidad
      puts "Se ha cargado #{cantidad} unidades. Carga restante: #{@carga_maxima}"
    end
  end

end
