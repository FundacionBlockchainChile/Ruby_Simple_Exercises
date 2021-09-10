class Character

  def increment_healty(value)
    @salud = @salud + value
    p "The healty of #{@name} has changed in #{value}"
  end

  def has_ben_killed()
    @salud = 0
    p "The healty of #{@name} is now #{@salud}. He is Dead..."
  end

end

class Human < Character

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

  attr_accessor :name

  def initialize(name)
    @name = name
    @fuerza = 3
    @inteligencia = 25
    @sigilo = 3
    @salud = 50
  end

  def cure_himself()
    @salud = @salud + 10
    p "#{@name} has cured himselft, his healty now is 10 more points..."
  end

  def fire_ball(target)
    p "#{@name} is attackig with FireBalls to #{target.name}"
    target.increment_healty(-20)
    return self 
  end

end

class Ninja < Human

  attr_accessor :name

  def initialize(name)
    @name = name
    @fuerza = 3
    @inteligencia = 3
    @sigilo = 175
    @salud = 100
  end

  def stole(target)
    p "#{@name} is stealing to #{target.name}"
    target.increment_healty(-8)
    @salud = @salud + 10
    p "#{@name} ha incrementado su salud en 10 puntos!!"
    return self 
  end

  def runAway()
    @salud = @salud - 15
    p "#{@name} ha huido de la batalla su salud disminuye en 15 puntos!!"
    return self 
  end

end

class Samurai < Human

  @@no_of_samurais = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @fuerza = 3
    @inteligencia = 3
    @sigilo = 3
    @salud = 200
    @@no_of_samurais += 1
  end

  def deadly_strike(target)
    p "#{@name} has gave a Deadly Strike to #{target.name}"
    target.has_ben_killed()
    return self 
  end

  def meditate()
    @salud = 200
    p "After meditation the healty of #{@name} Samurai is now renewed to #{@salud}"
    return self 
  end

  def singings()
    p "There are #{@@no_of_samurais} Samurais singing to his ancestors..."
    return self 
  end

end


gandalf = Mago.new('Gandalf el Gris')
bruceLee = Ninja.new('Bruce Lee')
tadakatsu = Samurai.new('Honda Tadakatsu')
gozen = Samurai.new('Tomoe Gozen')

# p bruceLee
# p gandalf
# p tadakatsu
# p gozen

gandalf.attack_to(tadakatsu).fire_ball(gozen).cure_himself()
bruceLee.attack_to(gandalf).attack_to(tadakatsu).attack_to(gozen).stole(gandalf).runAway()
tadakatsu.deadly_strike(gandalf).attack_to(bruceLee).meditate().singings()
gandalf.cure_himself()

