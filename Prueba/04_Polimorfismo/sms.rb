require_relative 'notificacion'
class SMS < Notificacion
  def initialize(numero_telefono, mensaje, usuario)
    @numero_telefono = numero_telefono
    super(usuario, mensaje)
  end
  def enviar
    puts "Usuario: #{@usuario} - Enviando SMS al número: #{@numero_telefono} con el mensaje: #{@mensaje}"
  end
end
