

def funcion()
  interior = 'Soy una Variable: No pueden acceder a mi desde fuera de la funcion.'
  puts interior
end

exterior = "Estoy en el nivel raiz, todos pueden acceder a mi...."

puts exterior # "Estoy en el nivel raiz, todos pueden acceder a mi...."
puts interior # UNDEFINED