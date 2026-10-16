class Vehiculo
  attr_reader :placa , :combustible
  def initialize(placa, combustible)
    @placa = placa
    @combustible = combustible
    
  end
  def mostrar_informacion
    puts "Vehiculo - Placa: #{@placa}, Combustible: #{@combustible}"
  end
  def recargar_combustible(cantidad)
     capacidad_actual = @combustible + cantidad
    if capacidad_actual > 100
      puts "No se puede recargar más de 100 unidades de combustible."
       sobrante = capacidad_actual - 100
      if sobrante > 0
        cantidad_recargada = cantidad - sobrante
        @combustible += cantidad_recargada
        puts "Se ha recargado #{cantidad_recargada} de combustible. Sobrante: #{sobrante} unidades no se pudieron recargar."
      end
    else
      @combustible += cantidad
      puts "Se ha recargado #{cantidad} de combustible. Combustible actual: #{@combustible}"
    end
  end
  def consumir_combustible()
    if @combustible - 10 < 0
      puts "No hay suficiente combustible para consumir."
    else
      @combustible -= 10
      puts "Se ha consumido 10 de combustible. Combustible actual: #{@combustible}"
    end
  end
end
