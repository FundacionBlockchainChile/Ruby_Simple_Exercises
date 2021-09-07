class Mamifero
  def initialize()
    puts "Estoy vivo"
    return self
  end
  def respirar()
    puts "Inhalar - Exhalar"
    return self
  end
  
  def quien_soy()
    puts self
    return self
  end
end
mi_mamifero = Mamifero.new.quien_soy.respirar