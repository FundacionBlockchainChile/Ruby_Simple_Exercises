require_relative 'mamifero'

class Perro < Mamifero
  attr_accessor :salud
  def initialize(nombre)
    @salud = 150
    @nombre = nombre
  end


  def mostrar_salud()
    show_salud()
    return self
  end  
  def acariciar()
    p "Acariciando..."
    increment_salud(5)
    return self
  end  
  def caminar()
    p "Caminando..."
    increment_salud(-1)
    return self
  end  
  def correr()
    p "Corriendo..."
    increment_salud(-10)
    return self
  end  
  def hacer_ejercicio()
    p "A ejercitar!!! #{@nombre}"
    caminar()
    caminar()
    caminar()
    correr()
    correr()
    acariciar()
    mostrar_salud()
    return self
  end  
end

# piesLigeros = Perro.new('Pies ligeros')
# piesLigeros.mostrar_salud()
# piesLigeros.acariciar()
# piesLigeros.mostrar_salud()
# piesLigeros.caminar()
# piesLigeros.mostrar_salud()
# piesLigeros.hacer_ejercicio()
memo = Perro.new("Memo")
memo.caminar().caminar().acariciar().hacer_ejercicio()