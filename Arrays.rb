# ARRAYS
a = ["Matz","Guido","Dojo","Choi","Jhon",]
b = [5,6,9,3,1,2,4,7,8,10]
c = ['Dojo', 9]

# returns the first value or 0th index of the array
puts a[0]
puts a[1]

puts b.class
puts b.shuffle.join("-")

puts a.to_s

x = (a+b)-c
puts x.to_s

puts a.shuffle.join("-")

a.delete('Dojo')
puts "The length of the A Array is #{a.length}"

Delete at index
a.delete_at(0)

puts a.at(2)
puts a.fetch(-1)
puts a.fetch(-2)

puts a.length
puts b.sort

Slice
puts a[0]
puts a[2]

Insert
a.insert(12, 'Awesome', 'Shit')
puts a

puts a.values_at(2,3)

c = %w{gato perro oso}
puts c
puts c.values_at(1,2).join(' & ')