# # PUBLIC
class Mamifero
  def respirar()
    puts "Inhalar - Exhalar"
  end
  
  def comer()
    puts "Yum yum yum"
  end
end

class Humano < Mamifero # Humano hereda de Mamifero
  def metodo_subclase()
    respirar()
  end
  def otro_metodo()
    self.comer()
  end
end

persona = Humano.new
persona.metodo_subclase
persona.otro_metodo

# PROTECTED
class Mamifero
  # codigo anterior removido para resumir
  
  def invocando_hablar
    hablar()
  end
  
  protected
    def hablar
      puts "Soy un metodo protegido"
    end
end

class Humano < Mamifero
  # codigo anterior removido para resumir
  
  def explicito_hablar
    self.hablar()
  end
  
  def implicito_hablar
    hablar()
  end
end

mamifero = Mamifero.new
# mamifero.hablar # => protected method `hablar' called for #<Mamifero:0x007fa5438183d8> (NoMethodError)
mamifero.invocando_hablar # => Soy un metodo protegido
persona = Humano.new
# persona.hablar # => protected method `hablar' called for #<Humano:0x007fedfe824710> (NoMethodError)
persona.explicito_hablar # => Soy un metodo protegido
persona.implicito_hablar # => Soy un metodo protegido

# PRIVATE
class Mamifero
  # codigo anterior removido para resumir
  
  def invocando_llorar
    llorar()
  end
  
  private
    def llorar
      puts "Sniff sniff..."
    end
end

class Humano < Mamifero
  # codigo anterior removido para resumir
  
  def explicito_llorar
    self.llorar()
  end
  
  def implicito_llorar
    llorar()
  end
end
mamifero = Mamifero.new
mamifero.invocando_llorar # => Sniff sniff...
mamifero.llorar # => private method `llorar' called for #<Mamifero:0x007fd9830de5f8> (NoMethodError)
persona = Humano.new
persona.llorar # => private method `cry' called for #<Human:0x007f8f298de248> (NoMethodError)
persona.explicito_llorar # =>`explicito_llorar': private method `llorar' called for #<Humano:0x007f87a30bf450> (NoMethodError)
persona.implicito_llorar # => Sniff sniff...