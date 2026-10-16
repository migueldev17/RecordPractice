require_relative 'notificacion'
class Email < Notificacion
  def initialize(asunto, mensaje, usuario)
    super(usuario, mensaje)
    @asunto = asunto
    
  end
  def enviar
    puts "Del correo: #{@usuario} - Enviando email con asunto: #{@asunto} y el mensaje: #{@mensaje}"
  end
end
