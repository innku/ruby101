class Usuario
  
  attr_reader :nombre, :apellido, :edad
  
  def initialize(nombre, apellido, edad)
    @nombre = nombre
    @apellido = apellido
    @edad = edad
  end
  
  def to_s
    "#{@nombre} #{@apellido}, #{@edad} primaveras"
  end
  
end