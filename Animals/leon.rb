require_relative 'mamifero'

class Leon < Mamifero
  
  attr_accessor :salud
  
  def initialize(nombre)
    @salud = 170
    @nombre = nombre
  end

  def mostrar_salud()
    p "Este es un Leon!! Su nombre es #{@nombre}"
    show_salud()
    return self
  end  

  def volar()
    p "Volando..."
    increment_salud(-10)
    return self
  end

  def atacar_ciudad()
    p "Atacando Ciudad..."
    increment_salud(-50)
    return self
  end

  def comer_humanos()
    p "Comiendo Humanos..."
    increment_salud(20)
    return self
  end

end

leoncioElLeon = Leon.new('Leoncio')
leoncioElLeon.atacar_ciudad().atacar_ciudad().atacar_ciudad().comer_humanos().comer_humanos().volar().volar().mostrar_salud()