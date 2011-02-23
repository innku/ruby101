class Perro
  attr_reader     :edad
  attr_writer     :nombre
  attr_accessor   :owner 
  
  def initialize()
    @edad = 0 
  end
end