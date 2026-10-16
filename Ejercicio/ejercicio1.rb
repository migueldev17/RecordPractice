# Definimos la clase Persona
class Persona
  # El Constructor : método initialize se llama cuando se crea una instancia de la clase
  def initialize (nombre, edad, genero, profesion)         
    # Aquí irían las inicializaciones necesarias
    @nombre = nombre # la @ indica que es una variable de instancia
    @edad = edad
    @genero = genero
    @profesion = profesion
  end
  def saludar
    puts "Hola, mi nombre es #{@nombre}, tengo #{@edad} años, soy #{@genero} y trabajo como #{@profesion}."
  end
  def mayor_de_edad?
    @edad >= 18
  end
  def cambiar_profesion(nueva_profesion)
    @profesion = nueva_profesion
  end
  def obtener_profesion
    @profesion
  end
  def cambiar_edad(nueva_edad)
    @edad = nueva_edad
  end
end

persona1 = Persona.new("Juan", 30, "masculino", "ingeniero") # Creamos una instancia de la clase Persona
persona1.saludar # Llamamos al método saludar de la instancia persona1
puts "¿Es mayor de edad? #{persona1.mayor_de_edad?}"
persona1.cambiar_profesion("arquitecto")
persona1.saludar # Llamamos al método saludar de la instancia persona1
puts "Profesión: #{persona1.obtener_profesion}" # Llamamos al método obtener_profesion de la instancia persona1
puts "Edad: #{persona1.instance_variable_get(:@edad)}" # Accedemos a la variable de instancia @edad directamente
persona2 = Persona.new("María", 25, "femenino", "doctora") # Creamos otra instancia de la clase Persona
persona3 = Persona.new("Carlos", 17, "masculino", "estudiante") # Creamos otra instancia de la clase Persona
persona2.saludar # Llamamos al método saludar de la instancia persona2
puts "¿Es mayor de edad? #{persona2.mayor_de_edad?}"
persona3.saludar # Llamamos al método saludar de la instancia persona3
puts "¿Es mayor de edad? #{persona3.mayor_de_edad?}"