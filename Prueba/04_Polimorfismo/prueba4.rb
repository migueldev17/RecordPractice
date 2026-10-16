require_relative 'email'
require_relative 'sms'
mi_email = Email.new("Seguridad", "Este es un mensaje de prueba", "Miguel")

mi_sms = SMS.new("1234567890", "Este es un mensaje de prueba", "Miguel")


bandeja = [mi_email, mi_sms]
bandeja.each do |notificacion|
  notificacion.enviar
  puts "-----------------------------"
  puts "Usuario: #{notificacion.usuario}"
end