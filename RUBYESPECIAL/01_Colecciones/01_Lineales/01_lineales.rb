# ==============================================================================
# RUBYESPECIAL/01_Colecciones/01_Lineales/01_lineales.rb
# ==============================================================================
# Cargamos la librería nativa para el manejo de hilos y sincronización
require 'thread'

puts '------------------------------------------------------------'
# 1. ARRAYS (Arreglos indexados dinámicos estándar)
# Los arrays en Ruby cambian de tamaño automáticamente en memoria.
# ==============================================================================
puts '1. ARRAYS AVANZADOS:'

inventario = ['Computadora', 'Teclado', 'Mouse', 'Monitor']
inventario.push('Impresora')       # Agregamos un elemento al final del array
inventario.unshift('Tablet')       # Agregamos un elemento al inicio del array
puts "Inventario inicial: #{inventario}"

inventario.delete('Mouse')         # Eliminamos un elemento por su valor
puts "Inventario después de eliminar Mouse: #{inventario}"

inventario.delete_at(1)            # Eliminamos el elemento en la posición 1
puts "Inventario después de eliminar el elemento en la posición 1: #{inventario}"

inventario[2] = 'Auriculares'      # Modificamos el elemento en la posición 2
puts "Inventario después de modificar la posición 2: #{inventario}"

puts "\n--- Recorriendo elementos con índice ---"
inventario.each_with_index do |item, index|
  puts "Elemento en la posición #{index}: #{item}"
end

puts "\n--- Transformación y Filtros Mutables (!) ---"
inventario.map! { |item| item.upcase } # Convertimos todos los elementos a mayúsculas
puts "Inventario en mayúsculas: #{inventario}"

inventario.select! { |item| item.length > 6 } # Filtramos: solo elementos con longitud mayor a 6
puts "Inventario (longitud > 6): #{inventario}"

inventario.reverse!                # Invertimos el orden de los elementos
puts "Inventario invertido: #{inventario}"

inventario.sort!                   # Ordenamos los elementos alfabéticamente
puts "Inventario ordenado alfabéticamente: #{inventario}"

# Agregamos varios elementos (incluyendo duplicados y variantes de capitalización)
inventario.push('TABLET', 'MONITOR', 'IMPRESORA', 'AURICULARES', 'CAMARA', 'IMPRESORA', 'DISCO DURO', 'WEBCAM')

puts "\n--- Métodos de Conteo y Unicidad ---"
puts "Cantidad total de elementos: #{inventario.length}"
puts "Cantidad de elementos únicos: #{inventario.uniq.length}"
puts "Cantidad de elementos duplicados exactos: #{inventario.length - inventario.uniq.length}"

# Análisis sin importar mayúsculas/minúsculas (Polimorfos / Case-Insensitive)
puts "Cantidad de elementos únicos (sin importar capitalización): #{inventario.map(&:downcase).uniq.length}"
puts "Cantidad de elementos duplicados (sin importar capitalización): #{inventario.length - inventario.map(&:downcase).uniq.length}"

puts "\n--- Agrupación Avanzada con group_by ---"
inventario_grouped = inventario.group_by { |item| item.downcase }
puts "Inventario agrupado por minúsculas: #{inventario_grouped}"

inventario_grouped.each do |item, group|
  puts "  -> Elemento base: #{item} | Cantidad en inventario: #{group.length}"
end

puts "\n--- Limpieza del Array ---"
puts "Antes de uniq!: #{inventario}"
inventario.uniq!                   # Eliminamos duplicados in-place
puts "Después de uniq!: #{inventario}"
puts "Elemento en la posición 2: #{inventario[2]}"
puts "Cantidad final de elementos: #{inventario.length}"
puts "Tipo de dato de la estructura: #{inventario.class}"

puts '------------------------------------------------------------'
# 2. STRINGS (Cadenas de texto como secuencias de caracteres/bytes)
# En Ruby, un String se puede rebanar y manipular como una colección indexada.
# ==============================================================================
puts '2. STRINGS AVANZADOS:'
codigo_sku = 'SKU-84729-LOG'
puts "Código SKU original: #{codigo_sku}"
puts "Longitud del código SKU: #{codigo_sku.length}"
puts "Primer carácter: #{codigo_sku[0]}"
puts "Último carácter: #{codigo_sku[-1]}"

partes = codigo_sku.split('-')
puts "Código SKU dividido en Array: #{partes}"

puts "Subcadena (rebanado del índice 4, tomando 5 caracteres): #{codigo_sku[4, 5]}"
puts "¿Incluye el patrón '84729'?: #{codigo_sku.include?('84729')}"
puts "Invertir string: #{codigo_sku.reverse}"
puts "Representación en Bytes: #{codigo_sku.bytes.inspect}"

puts '------------------------------------------------------------'
# 3. QUEUE (Colas FIFO estándar - First In, First Out)
# El primero que entra es el primero que sale. Es segura para hilos (Thread-safe).
# ==============================================================================
puts "3. DETALLE DE COLA STANDARD (QUEUE):"

cola_general = Queue.new
cola_general.push("Cliente_1")     # Método estándar de inserción
cola_general.push("Cliente_2")
cola_general << "Cliente_3"         # Operador alternativo (shoveling)

puts "Tamaño inicial de la cola general: #{cola_general.size}"

# Extracción ordenada (FIFO)
puts "Saliendo de la cola: #{cola_general.pop}" # Saca a Cliente_1
puts "Saliendo de la cola: #{cola_general.pop}" # Saca a Cliente_2
puts "Saliendo de la cola: #{cola_general.pop}" # Saca a Cliente_3

puts "\n--- Prevención de Deadlocks y Modo No Bloqueante ---"

# Control con condicionales para evitar que el hilo se congele
if !cola_general.empty?
  puts "Saliendo de la cola: #{cola_general.pop}"
else
  puts "Control preventivo: La cola ya se encuentra vacía. No se hace pop."
end

# Control con manejo de excepciones (Modo No Bloqueante pasando true)
begin
  puts "Intentando sacar de una cola vacía de forma no bloqueante..."
  elemento = cola_general.pop(true) # Lanza ThreadError de inmediato en vez de congelar el script
  puts "Saliendo de la cola: #{elemento}"
rescue ThreadError
  puts "¡Aviso de seguridad capturado! La cola está vacía, no hay elementos para procesar."
end

puts "\n--- Flujo de Cierre de Cola (Close) ---"
cola_general.push("Cliente_Remanente")
cola_general.close
puts "¿La cola fue cerrada?: #{cola_general.closed?}"

# Una cola cerrada permite extraer los elementos que ya estaban guardados en ella
puts "Extrayendo elemento restante post-cierre: #{cola_general.pop}" 
# Si se vacía por completo, las llamadas siguientes devuelven 'nil' en vez de bloquear
puts "Extrayendo de cola cerrada y vacía: #{cola_general.pop.inspect}"

puts '------------------------------------------------------------'
# 4. SIZEDQUEUE (Colas con capacidad limitada en memoria)
# Bloquea la inserción si se alcanza el tamaño máximo predefinido.
# ==============================================================================
puts "4. DETALLE DE COLA CON LÍMITE (SIZEDQUEUE):"

# Creamos una cola con capacidad máxima de 2 espacios
cola_limitada = SizedQueue.new(2)

cola_limitada.push("Tarea_1")
cola_limitada.push("Tarea_2")

puts "Tamaño actual de la cola: #{cola_limitada.size}"
puts "Capacidad máxima asignada: #{cola_limitada.max}"

# Intentar meter un tercer elemento de forma bloqueante detendría el script.
# Usamos el parámetro no bloqueante 'true' para proteger el hilo.
begin
  cola_limitada.push("Tarea_3", true)
rescue ThreadError
  puts "¡Cola Llena! No se pudo añadir 'Tarea_3' porque excede el límite de #{cola_limitada.max}"
end

# Liberamos un espacio procesando un elemento
puts "Procesando de la cola limitada: #{cola_limitada.pop}"

puts '------------------------------------------------------------'
# 5. PILAS / STACKS (Estructuras LIFO - Last In, First Out)
# El último en entrar es el primero en salir. Ruby usa Arrays para esta lógica.
# ==============================================================================
puts "5. DETALLE DE PILAS (LIFO):"

historial_navegacion = []

# Insertamos elementos en la Pila (Push)
historial_navegacion.push("google.com")
historial_navegacion.push("github.com")
historial_navegacion.push("ruby-lang.org")
puts "Historial de navegación actual: #{historial_navegacion}"

# Extrayemos elementos desde el último ingresado (Pop)
puts "Haciendo clic en botón 'Atrás': Saliendo de -> #{historial_navegacion.pop}"
puts "Haciendo clic en botón 'Atrás': Saliendo de -> #{historial_navegacion.pop}"

puts "Pila restante en memoria: #{historial_navegacion}"
puts "Elemento en la cima (vista previa sin extraer): #{historial_navegacion.last}"
puts '------------------------------------------------------------'
