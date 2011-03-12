class Usuario
  
  attr_reader :nombre, :apellido, :edad
  
  def initialize(nombre, apellido, edad)
    @nombre = nombre
    @apellido = apellido
    @edad = edad
  end
  
  def self.cargar(path)
      usuarios = []
      File.readlines(path).each do |line|
        nombre,apellido,edad = line.split(',')
        usuarios << Usuario.new(nombre, apellido, edad)
      end
      usuarios
  end
  
  def to_s
    "#{@nombre} #{@apellido}, #{@edad} primaveras"
  end
  
end