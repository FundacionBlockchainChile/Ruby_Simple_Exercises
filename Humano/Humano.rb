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
    if target.class.ancestors[0] == Human
      p "#{@name} is attackig to #{target.name}"
      target.increment_healty(-10)
      p "#{@name} have been successfully attacked to #{target.name}"
    elsif
      p "#{@name} can't attack #{target.name} because he is a SuperHero class character..."
    end
    return self   
  end
end

class SuperHero < Character

  attr_accessor :name

  def initialize(name)
    @name = name
    @fuerza = 30
    @inteligencia = 3
    @sigilo = 3
    @salud = 1000
  end

  def attack_to(target)
    p "#{@name} is attackig to #{target.name}"
    target.increment_healty(-20)
    return self 
  end

end


superman = SuperHero.new('Superman')
aquaman = SuperHero.new('Aquaman')
batman = Human.new('Batman')
jocker = Human.new('Joker')

jocker.attack_to(jocker)
superman.attack_to(batman)
batman.attack_to(superman).attack_to(jocker).attack_to(aquaman)
aquaman.attack_to(superman).attack_to(jocker)
jocker.attack_to(batman)
