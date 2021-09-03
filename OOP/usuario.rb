# BASIC CLASS GETTER AND SEETER
class Usuario
  
  attr_accessor :nombre
  attr_accessor :apellido

end
usuario1 = Usuario.new
usuario2 = Usuario.new
usuario1 == usuario2 # =>false
usuario1.nombre = "Matz"

p usuario1.inspect # => #<User:0x007f8f4b043a30 @nombre="Matz">
p usuario1.nombre # =>  undefined method `nombre' for #<User:0x007fb104103b70 @nombre="Matz"> (NoMethodError)

# BASIC CLASS WITH METHOD
class User
  attr_accessor :first_name, :last_name

  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def algun_metodo
    puts "Este es un metodo de instancia"
  end

end
steph = User.new("Stephen", "Curry") #We can do this now.


# BASIC CLASS WITH METHODS
class Usuario
  # Crear metodos de instancia que obtienen y establecen los atributos nombre y apellido
  attr_accessor :nombre, :apellido
  
  def initialize(f_nombre, l_apellido)
    @nombre = f_nombre
    @apellido = l_apellido
  end
  
  def nombre_completo
    puts "Yo soy #{@nombre} #{@apellido}"
  end
  
  def saludar
    puts "¡Hola!"
  end
end
u = Usuario.new("John", "Doe")
u.nombre_completo # => "Yo soy John Doe"
u.saludar # => "¡Hola!"


# Métodos de Clase
# Los métodos de clase se declaran de la misma manera que los métodos normales, excepto que tienen el prefijo self seguido de un punto. Estos métodos se ejecutan a nivel de clase y no están disponibles para las instancias. Agreguemos un método de Clase a nuestra clase Usuario.
class Usuario
  # codigo anterior removido para resumir
  
  def self.foo
    puts "Este es un metodo de clase"
  end
  
end
u = Usuario.new("Jane", "Doe")
u.foo # => NoMethodError: undefined method `foo'
User.foo # => "Este es un metodo de clase"