class Character

  def increment_healty(value)
    @salud = @salud + value
    p "The healty of #{@name} has changed in #{value}"
  end

end

class Human < Character

  attr_accessor :name

  def initialize(name)
    @name = name
    @fuerza = 3
    @inteligencia = 3
    @sigilo = 3
    @salud = 100
  end

  def attack_to(target)
    if target.class.ancestors.include?(Human)
      p "#{@name} is attackig to #{target.name}"
      target.increment_healty(-10)
      p "#{@name} have been successfully attacked to #{target.name}"
    elsif
      p "#{@name} can't attack #{target.name} because he is a SuperHero class character..."
    end
    return self   
  end
end

class Mago < Human

  # def attack_to(target)
  #   p "#{@name} is attackig to #{target.name}"
  #   target.increment_healty(-10)
  #   return self 
  # end

end

class Ninja < Human

  # def attack_to(target)
  #   p "#{@name} is attackig to #{target.name}"
  #   target.increment_healty(-8)
  #   return self 
  # end

end

class Samurai < Human

  # def attack_to(target)
  #   p "#{@name} is attackig to #{target.name}"
  #   target.increment_healty(-9)
  #   return self 
  # end

end


bruceLee = Ninja.new('Bruce Lee')
gandalf = Mago.new('Gandalf el Gris')
tadakatsu = Samurai.new('Honda Tadakatsu')

# p bruceLee.class.ancestors

tadakatsu.attack_to(gandalf).attack_to(bruceLee)
bruceLee.attack_to(gandalf).attack_to(tadakatsu)
gandalf.attack_to(tadakatsu).attack_to(bruceLee)

