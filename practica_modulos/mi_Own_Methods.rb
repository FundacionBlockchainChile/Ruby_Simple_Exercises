require 'date'

module MiEnumerable

  def mi_each & block
    for i in 0...self.length
      block.call(self[i])
    end
  end

  def getSquares()
    for i in 0...self.length
      self[i] = self[i] * self[i]
    end
    return self
  end

  def returnLengths()
    for i in 0...self.length
      self[i] = self[i].length
    end
    return self 
  end
# 
  def fullName()
    for i in 0...self.length
      self[i] = "#{self[i][:nombre]} #{self[i][:apellido]}"
    end
    return self 
  end


  def getAges()
    for i in 0...self.length
      self[i] = "La edad de #{self[i][:nombre]} es #{Date.today.year - self[i][:birth_year]} años."
    end
    return self 
  end

end

# Append Class MiEnumarble to Array Class
class Array
   include MiEnumerable
end


[1,2,3,4].mi_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].mi_each { |i| puts i * 10 } # => 10 20 30 40
p [1,2,3,4].getSquares()  # => 1 4 9 16
p ['cat','dog','bird','dinosaur'].returnLengths()  # => [3, 3, 4, 8]
p [
  {nombre: 'Jhon', apellido: 'Doe', birth_year: 1980 },
  {nombre: 'Jane', apellido: 'Doe', birth_year: 1985 },
  {nombre: 'Mike', apellido: 'Jordan', birth_year: 1990 },
].getAges()
p [
  {nombre: 'Jhon', apellido: 'Doe', birth_year: 1980 },
  {nombre: 'Jane', apellido: 'Doe', birth_year: 1985 },
  {nombre: 'Mike', apellido: 'Jordan', birth_year: 1990 },
].fullName()

# p Date.today.year 