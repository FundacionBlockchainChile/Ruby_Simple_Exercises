# Examople 01
def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "You are in the block" }

# Examople 02
def testTwo
  yield(5)
  puts "You are in the method test_Two"
  yield(100)
end
testTwo { |i| puts "You are in the block #{i}" }

# Example 03
def square(num)
  puts "num is #{num}"

  x = yield(num)
  puts "x has a value of #{x}"

  y = yield(num) * x
  puts "y has a value of #{y}"
end
square(5) { |i| i*i }

# Example 04
def testFour
  puts "Estas en el metodo" 
  yield 
  puts "Estas de vuelta en el metodo" 
  yield 
end 
testFour { puts "Estas en el bloque" }

# Example 05
def testFive 
  yield 5 
  puts "Estas en el metodo del testFive" 
  yield 100 
end 
testFive { |i| puts "Estas en el bloque #{i}" }