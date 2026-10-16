class Empleado
  attr_reader :Id
  attr_accessor :nombre, :puesto
  def initialize (id, nombre, puesto, salario)
    @Id = id
    @nombre = nombre
    @puesto = puesto
    @salario = salario
  end
  def mostrar_informacion
    puts "Empleado - ID: #{@Id}, Nombre: #{@nombre}, Puesto: #{@puesto}, Salario: #{@salario}"
  end
  def aumentar_salario(monto)
    if monto <= 100
      puts "El aumento de salario debe ser mayor a 100."
    else
      @salario += monto
      puts "Aumento de salario exitoso. Nuevo salario: #{@salario}"
    end
  end
  def reducir_salario(monto)
    if monto > @salario
      puts "El monto a reducir no puede ser mayor al salario actual. Salario actual: #{@salario}"
    else
      @salario -= monto
      puts "Reducción de salario exitosa. Nuevo salario: #{@salario}"
    end
  end
  def ver_salerio_de_empleado
    puts "El salario del empleado #{@nombre} es: #{@salario}"
  end
  
end
empleado1 = Empleado.new(1, "Ana", "Gerente", 5000)
empleado1.mostrar_informacion
empleado1.aumentar_salario(200) # Aumento válido
empleado1.ver_salerio_de_empleado
empleado1.reducir_salario(6000) # Intento de reducción mayor al salario
empleado1.reducir_salario(1000) # Reducción válida
empleado1.ver_salerio_de_empleado
empleado1.puesto = "Directora" # Cambiamos el puesto usando el accesor de escritura
empleado1.mostrar_informacion
empleado1.salario = 6000 # Intento de cambiar el salario directamente (esto no funcionará debido a la encapsulación)
