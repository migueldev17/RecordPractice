class Auto
  attr_reader :marca, :modelo, :precio, :color

  def initialize (marca, modelo,precio, color)
    @marca = marca
    @modelo = modelo
    @precio = precio
    @color = color
    
  end
  def mostrar_informacion
    puts "Vehiculo disponible - Marca: #{@marca}, Modelo: #{@modelo}, Precio: #{@precio}, Color: #{@color}"
  end
  def aplicar_descuento(descuento)
    precio_final = @precio - (@precio * descuento / 100.0)
    puts "Precio con descuento aplicado: #{precio_final}"
  end
  def getprecio
    @precio
  end
  def getcolor
    @color
  end
  def setprecio(nuevo_precio)
    @precio = nuevo_precio
  end
  def setcolor(nuevo_color)
    @color = nuevo_color
  end
end
auto1 = Auto.new("Toyota", "Corolla", 20000, "Rojo")
auto1.mostrar_informacion
auto1.aplicar_descuento(10)
auto1.setprecio(18000)
auto1.setcolor("Azul")
auto1.mostrar_informacion
auto1.aplicar_descuento(5)
