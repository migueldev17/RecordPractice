# Clase conceptual para entender los accesores de lectura y escritura en Ruby
class CuentaBancaria
  attr_accessor :titular, :saldo # Esto crea automáticamente los métodos de lectura y escritura para las variables de instancia @titular y @saldo
  attr_reader :numero_cuenta # Esto crea automáticamente el método de lectura para la variable de instancia @numero_cuenta
  attr_writer :tipo_cuenta # Esto crea automáticamente el método de escritura para la variable de instancia @tipo_cuenta
  def initialize (titular, saldo, numero_cuenta, tipo_cuenta)
    @titular = titular
    @saldo = saldo
    @numero_cuenta = numero_cuenta
    @tipo_cuenta = tipo_cuenta
    
  end
  def mostrar_informacion
    puts "Cuenta bancaria - Titular: #{@titular}, Saldo: #{@saldo}, Número de cuenta: #{@numero_cuenta}, Tipo de cuenta: #{@tipo_cuenta}"
  end
  def depositar(monto)
    if monto <= 100
      puts "El monto a depositar debe ser mayor a 100."
    else
      @saldo += monto
      puts "Depósito exitoso. Nuevo saldo: #{@saldo}"
    end
  end
  def retirar(monto)
    if monto > @saldo
      puts "Fondos insuficientes. Saldo actual: #{@saldo}"
    else
      @saldo -= monto
      puts "Retiro exitoso. Nuevo saldo: #{@saldo}"
    end
  end

end

cuenta = CuentaBancaria.new("Juan Pérez", 5000, "123456789", "Ahorros")
cuenta.mostrar_informacion
cuenta.depositar(50) # Intento de depósito menor a 100
cuenta.depositar(200) # Depósito válido 
cuenta.retirar(6000) # Intento de retiro mayor al saldo
cuenta.retirar(3000) # Retiro válido
cuenta.titular = "María López" # Cambiamos el titular usando el accesor de escritura
cuenta.mostrar_informacion
cuenta.tipo_cuenta = "Corriente" # Cambiamos el tipo de cuenta usando el accesor de escritura
cuenta.mostrar_informacion  
