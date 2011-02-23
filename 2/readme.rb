# RUBY 101 - Clases

#Clases
  #Definicion
  #El metodo initialize es el constructor de la clase
  #Las variables de instancia se definen con una @ antes de su nombre
  class Persona
    def initialize(nombre, apellido)
      @nombre = nombre
      @apellido = apellido
    end
  end
  
  elias = Persona.new('Elias', 'Matheus') #Se crea un objecto nuevo con el metodo new
  p elias.inspect 
  
#Metodos de acceso
  class Perro
    attr_reader     :edad   # Crea solo metodo de lectura
    attr_writer     :nombre # Crea solo metodo de escritura
    attr_accessor   :owner  # Crea ambos metodos
    
    def initialize()
      @edad = 0 
    end
  end
  
  #Nace un perro
  perro = Perro.new
  
  #Le asignamos un nombre
  perro.nombre = 'Fido'
  p perro.owner # => nil
  perro.owner = elias
  p perro.owner # => Objecto Persona
  
#Metodos de instancia
  class Gato
    def kick
      puts 'miaou [Please dont kick me sir]'
    end
  end
  
  gato_callejero = Gato.new
  gato_callejero.kick # => miaou [Please dont kick me sir]
  
#Metodos de clase
  class Caballo
    
    def initialize(nombre)
      @nombre = nombre
    end
    
    #En java los metodos de clase son metodos estáticos
    def self.informacion
      'Animal grande'
    end
    
    def informacion
      "#{Caballo.informacion} llamado #{@nombre}" 
    end
    
  end
  
  caballo = Caballo.new('Londres')
  p Caballo.informacion # => Animal grande
  p caballo.informacion # => Animal grande llamado Londres
  