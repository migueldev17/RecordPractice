class Jugador
  attr_reader :nombre, :vida

  def initialize(nombre, vida)
    @nombre = nombre
    @vida = vida
    
  end
  def recibir_daño(cantidad)
    if @vida - cantidad < 0
      @vida = 0
      puts "#{@nombre} ha sido derrotado."
    else
      @vida -= cantidad
      puts "#{@nombre} ha recibido #{cantidad} de daño. Vida restante: #{@vida}"
    end
  end
  

end
