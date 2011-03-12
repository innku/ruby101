# RUBY 101 - Basico
# Todo lo que venga despues de un # es un comentario en Ruby

#Variables
  # Los tipos de dato no importan en Ruby
  soy_un_string = "Hola!"
  soy_un_entero = 100
  soy_un_boolean = true

#Output (Escribir algo)
  puts "Hola desde Ruby"
  puts "#{soy_un_string} desde Ruby" # => Hola! desde Ruby

#Input (Leer algo)
  input_del_usuario = gets
  puts "Acabas de escribir: #{input_del_usuario}"

#Métodos
  #Definicion
  def saluda
    puts "Hola, estoy dentro de un metodo"
  end
  
  #Llamada
  saluda # => Hola, estoy dentro de un metodo
  
  #Metodos con parametros
  def saluda_a(nombre)
    puts "Hola #{nombre}"
  end
  
  saluda_a("Adrian") # => Hola Adrian!

  #Metodos con parametros opcionales
  def saludo!(nombre='viejo')
    puts "Hola #{nombre}!" 
  end
  
  saludo!("Miguel") # => Hola Miguel!
  saludo! # => Hola viejo!
  
  #Metodos que devuelven valores
  def cuadrado(numero)
    numero * numero
  end
  puts cuadrado(5) # => 25

#Condiciones
  #Sintaxis normal
  if true
    puts "Siempre entro a esta seccion"
  else
    puts "Nadie me quiere escuchar"
  end
  
  #Super Variaciones
  todo_va_bien = true
  uber_fail = false
  
  puts "Todo va bien" if todo_va_bien # => Todo va bien
  puts "Seguimos bien :)" unless uber_fail # => Seguimos bien :)
  
#Arreglos
  arreglo_vacio = []
  numeros = [1, 2]
  
  #Introducir elementos en un arreglo
  numeros << 3 # => [1,2,3]
  numeros << 4 # => [1,2,3,4]
  
  #Accessar elementos de un arreglo
  numeros.first # => 1
  numeros[1] # => 2
  
#Hashes
  hash_vacio = {}
  persona = {:nombre => 'Adrian', :edad => 25}
  
  #Introducir elementos a un hash
  persona[:apellido] = 'Cuadros' # => {:nombre => 'Adrian', :edad => 25, :apellido => 'Cuadros'}
  
  #Accessar elementos de un hash
  persona[:nombre] # => Adrian

#Debuggear con inspect
  puts numeros.inspect # => [1,2,3,4]
  puts persona.inspect # => {:nombre => 'Adrian', :edad => 25, :apellido => 'Cuadros'}
  
#Ciclos
  #each
  sumatoria = 0
  [1,2,3,4].each { |valor| sumatoria += valor }
  puts sumatoria # => 10
  
  #while
  total = 0
  while total < 10 do
    total+=1
  end 
  puts total # => 10
  