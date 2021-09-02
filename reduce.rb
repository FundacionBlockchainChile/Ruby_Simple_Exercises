def sum(array)
  array.reduce(0) { |sum, num| sum + num }
end
p sum([5, 10, 20])
# => 35