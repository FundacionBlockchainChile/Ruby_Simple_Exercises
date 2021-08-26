puts 24.class    # => Fixnumcopy
puts true.class  # => TrueClass
puts nil.class   # => NilClass
puts "string".reverse # => "gnirts"
puts 23.odd?          # => true
puts "abc".upcase     # => "ABC"
puts 24 + 8    # => 32
puts 24.send(:+, 8)  # => 32
puts 24.+ (8)        # => 32
puts 24 + 8          # => 32

BEGIN { 
  puts 'this is the firs stuff'
 }

END { 
  puts 'this is the last stuff'
 }

 first_name = 'srPies'
 last_name = 'ligeros'

 puts "Your name is #{first_name} and last name is #{last_name}"
 puts "Your first name is %s" % [first_name, last_name]

 z = 50
 puts "Value of z is %s" % z

 puts "Iam\n 5'10\" tall"

x = puts "hello world again"
puts x        # => nil

# METHODS

x = 'HelloWorld'
puts x.length
puts x.class
puts x.capitalize
puts x.upcase
puts x.downcase
puts x[2]
puts x.include?('World')
puts x.include?('world') #case Sensitive
puts "mi perro se llama srPies" if x.include?('world')

y = 'Sergio, Pies, Sofia, Lily'
puts y.split(',').to_s

z = ''
puts 'Z is empty' if z.empty?

# "Yo soy una instancia de la clase ".class

# Utilizar comillas es solo una forma para crear una instancia de un String. Podemos crear un String de la siguiente forma:
String.new("Yo soy una instancia de la clase String.")

# Interpolación de Cadenas
# ¿Cuándo debemos utilizar comillas dobles y cuándo comillas sencillas? ¿Hay alguna diferencia? En la mayoría de los casos, no importa si utilizamos comillas dobles o comillas sencillas. Sin embargo, una diferencia clave no podemos realizar interpolación de cadenas con comillas simples. ¿Qué es la interpolación de cadenas? Es la manera más fácil de concatenar 2 objetos para producir una cadena, incluso si uno de los objetos no es un String.

puts "24 + 8 es #{24 + 8}"         # => "24 + 8 es 32"
puts '24 + 8 es #{24 + 8}'         # => "24 + 8 es #{24 + 8}"
puts "24 + 8 es " + (24 + 8).to_s  # => "24 + 8 es 32"

# Observe que si no utilizamos la interpolación de cadenas, tendríamos que convertir el resultado de 24+8 en un string antes de agregarlo a la nueva cadena usando el método to_s. Si no convertimos el número en una cadena, nuestro código retornará un TypeError.

puts "24 + 8 es " + (24 + 8) # => TypeError: no implicit conversion of Fixnum into String

# IF STATEMNET
w = 0
if w > 2
  puts 'w is grater than 2'
elsif w < 2 and w > 0
  puts 'x is 1'
else
  puts 'I can´t guess the number'
end

z = 5
puts 'z is not 2' if z != 2
puts 'z is greater than 2' if z > 2
puts 'x is not 2' unless z == 2

# SIWTCH
# Exampel 1
age = 5

case age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12
  puts 'child'
when 13..18
  puts 'youth'
else
  puts 'adult'
end

# # Exampel 2
age = 22
if age >= 21
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end

# Exampel 3
number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

# Exampel 4
if !(age < 21)
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end

# # Esto es bastante difícil de leer. No te preocupes, Ruby hace que estas sentencias sean más fáciles con unless:
unless age < 21
  puts "Bienvenido a la fiesta."
else
  puts "Todavía no."
end

# # Exampel 5
if "" #entrega true
  puts "Soy positivo."
end
if 0
  puts "Soy positivo."
end

# # Exampel 6
unless nil
  puts "Soy negativo."
end
unless false
  puts "Soy negativo."
end

# # Podemos escribir una sentencia if/unless en una línea. ¡Que hermoso!
puts "Soy positivo." if "hello"
puts "Soy positivo." if 24
puts "Soy negativo" unless nil
puts "Soy negativo" unless false

# # Bucle While
i = 0
num = 5
while i < num do
   puts "Dentro del bucle i = #{i}"
   i +=1
end

# # Si quieres salir del bucle while antes que llegue al final, puedes utilizar break:
i = 0
num = 5
while i < num do
  puts "Dentro del bucle i = #{i}"
  i += 1  
  break if i == 2  
end

# # Bucle For
for i in 0..5 
  puts "El valor de la variable local es #{i}" 
end

# # Podemos utilizar break para detener el bucle for antes que llegue al final, de la misma manera que lo haríamos con el bucle while.
for i in 0..5 
  puts "El valor de la variable local es #{i}" 
  break if i == 2
end

# # Otro método útil es next. Utilizaremos next, si en lugar de terminal de bucle for, queremos saltar al siguiente índice.
for i in 0..5 
  next if i == 2
  puts "El valor de la variable local es #{i}"   
end

# Métodos de Ruby
# Los métodos de Ruby son muy similares a las funciones en cualquier otro lenguaje de programación. Podemos definir un método utilizando la siguiente sintaxis:
def hola_mundo
  puts "hola mundo again"
end
hola_mundo

def saludar(nombre1, nombre2)
  puts "Hola, #{nombre1} y #{nombre2}"
end
saludar("Oscar", "Eduardo") # => "Hola, Oscar y Eduardo"

# Parámetros por Defecto
# Cuando queremos agregar valores por defecto para nuestros paréntesis, podemos utilizar la siguiente sintaxis:
def saludar nombre1="Oscar", nombre2="Shane"
  puts "Hola, #{nombre1} y #{nombre2}"
end
saludar "Oscar"    # => "Hola, Oscar y Shane"

# Retorno Predeterminado
# En Ruby, no siempre necesitamos especificar lo que estamos devolviendo con la palabra clave return. Por defecto, Ruby devolverá lo que se haya evaluado al final. Recuerdo que el método puts devuelve nil, así que cambiemos un poco nuestro ejemplo.
def saludar nombre1="Oscar", nombre2="Shane"
  "Hola, #{nombre1} y #{nombre2}"
end
puts saludar "Oscar", "Eduardo"   # => "Hola, Oscar y Eduardo"

# Sentencia Regular para Retornar
# Sin embargo, si necesitamos salir de la función antes, la palabra clave return se comporta normalmente.
def saludar nombre1, nombre2
  if nombre1.empty? or nombre2.empty?
    return "¿Quién eres?"
  end
  # No ejecuta esta línea porque utilizamos return anteriormente
  "Hola, #{nombre1} y #{nombre2}"
end
puts saludar "", ""



