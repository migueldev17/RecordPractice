class Notificacion
  attr_reader :usuario , :mensaje
  def initialize(usuario, mensaje)
    @usuario = usuario
    @mensaje = mensaje
    
  end
  def enviar
    puts "Enviando notificación a #{@usuario}: #{@mensaje}"
  end
end
