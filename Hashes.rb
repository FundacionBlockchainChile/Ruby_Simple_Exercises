hash = {:nombre => "Coding", :apellido => "Dojo"}
hash.delete(:apellido)
print hash # => {:nombre => "Coding"}


# # .empty? => devuelve true si el hash no contiene pares de clave-valor
p hash.empty?

# # .has_key?(clave) => true ó  false
p hash.has_key?(:nombre) 

# # .has_value?(valor) => true ó false
p hash.has_value?("Dojo") 

# # Como vimos en el ejemplo anterior, podemos declarar un hash utilizando la siguiente sintaxis:
nuestro_hash = {:nombre => "Coding", :apellido => "Dojo"}

# # En nombre de la elegancia, ahora tenemos una nueva forma de crear un hash:
nuestro_hash = {nombre: "Coding", apellido: "Dojo"}


# Debido a los cambios de cómo Ruby interpreta los hashes, podemos pasarlos también como argumentos a un método. Veamos un ejemplo:
def nuevo_usuario usuario = {nombre: "Nombre", apellido: "Apellido"}
  puts "Bienvenido a nuestro sitio, #{usuario[:nombre]} #{usuario[:apellido]}!"
end
nuestro_usuario = {nombre: 'Oscar', apellido: "Vazquez"}
nuevo_usuario # => "Bienvenido a nuestro sitio, Nombre Apellido!"
nuevo_usuario(nuestro_usuario) # => "Bienvenido a nuestro sitio, Oscar Vasquez!"


# Ahora, esto es genial. Estamos pasando un hash como un argumento a nuestro método y mostrando un mensaje usando sus valores. Si no tenemos ningún argumento, utilizaremos los valores por defecto. Sin embargo, Ruby nos permite incluso mejorar más este código.
def nuevo_usuario (nombre: "Nombre", apellido: "Apellido")
  puts "Bienvenido a nuestro sitio, #{nombre} #{apellido}!"
end
nuevo_usuario(nombre: "srPies", apellido: "Ligeros")


# ¡Ahora, esto es más limpio! En la versión 2 de Ruby, nos presentaron palabras claves como argumentos (keyword arguments). Técnicamente es lo mismo pero con una sintaxis más limpia y un par de características adicionales.
# Antes teníamos que extraer nuestros valores del hash, ahora Ruby los extrae por nosotros y los establece como una variable local.
# Antes podíamos establecer un hash como una entrada predeterminada, ahora podemos establecer valores predeterminados con palabras claves como argumentos.
# Ahora podemos utilizar tanto parámetros regulares como palabras claves como argumentos.
def nuevo_usuario(saludo:"Bienvenido", nombre: "Nombre", apellido: "Apellido")
    puts "#{saludo}, #{nombre} #{apellido}"      
end
usuario = {nombre: "Oscar", apellido: "Vazquez"}
nuevo_usuario()                  # => Bienvenido, Nombre Apellido
nuevo_usuario(saludo:"Welcome", nombre: "srPies", apellido: "Ligeros") # => Welcome, srPies Ligeros


