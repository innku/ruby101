# RUBY 101 - Operaciones comunes con archivos y Strings

#Lectura
  #Leer todo el archivo
  p File.read('./archivos/text.txt') # => Solo algo de texto en un archivo...
  
  #Leer cada linea del archivo
  File.readlines('./archivos/text.txt').each {|line| p line }
  
#Existe un archivo?
  p File.exist?('./archivos/no_existo.txt') # => false
  p File.exist?('./archivos/text.txt') # => true
  
#Escritura
  file = File.open './archivos/sobre_escribeme.txt', 'w'
  file.write 'Algo de texto en otro archivo'

#Llamar archivos Ruby
  require './scripts/decir_hola' #Pueden ser scripts, clases, modulos

#Llamar todos los archivos de un directorio
  Dir['./clases/*.rb'].each do |file|
    require file
  end
  p Persona.inspect # => Persona
  p Perro.inspect # => Perro
  p Caballo.inspect # => Caballo
  
#Metodos especiales de strings
  #Quitar caracteres basura
  "linea de archivo\n".chomp # => "linea de archivo"
  
  #Separar palabras de un string
  "linea de archivo".split # => ["linea", "de", "archivo"]
  "linea-de-archivo".split("-") # => ["linea", "de", "archivo"]