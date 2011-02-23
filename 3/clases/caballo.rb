class Caballo
  
  def initialize(nombre)
    @nombre = nombre
  end
  
  def self.informacion
    'Animal grande'
  end
  
  def informacion
    "#{Caballo.informacion} llamado #{@nombre}" 
  end
  
end