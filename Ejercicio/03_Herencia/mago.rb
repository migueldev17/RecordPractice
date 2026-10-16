class Mago < Jugador
  def initialize(nombre, vida, mana)
    super(nombre, vida) # Llamamos al constructor de la clase padre (Jugador)
    @mana = mana
    
  end
  def lanzar_hechizo(costo_mana)
    if @mana - costo_mana < 0
      puts "#{@nombre} no tiene suficiente mana para lanzar el hechizo."
    else
      @mana -= costo_mana
      puts "#{@nombre} ha lanzado un hechizo que costó #{costo_mana} de mana. Mana restante: #{@mana}"
    end
  end
  def mostrar_informacion
    puts "Mago - Nombre: #{@nombre}, Vida: #{@vida}, Mana: #{@mana}"
  end
end
