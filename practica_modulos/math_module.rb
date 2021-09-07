# MathDojo
# Crea una clase MathDojo que te permita sumar y restar números..


class MathDojo


  attr_accessor :sum
    def initialize()
      @sum = 0
    end
  
  def add(*params)
    params.each { | param | @sum += param }
    return self
  end
  
  def subtract(*params)
    params.each { | param | @sum -= param }
    return self
  end

  def result()
    p @sum
  end

end
desafio1 = MathDojo.new.result # => 4
desafio1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4

desafio2 = MathDojo.new.add(1).add(*[3, 5, 7, 8], *[2, 4.3, 1.25]).subtract(*[2,3], *[1.1, 2.3]).result # => 23.15