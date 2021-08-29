# Aquí hay una lista de los métodos útiles de Enumerable. Intente todos los métodos al menos una vez.

animals = ["ant", "bear", "cat"]

# .any? { |obj| block } => true or false
p animals.any? { |word| word.length >= 3 } # => true

# .collect { |obj| block }=>devuelve un nuevo arreglo con los resultados de haber ejecutado el bloque una vez para cada elemento.
p (1..4).collect { |i| i*i } # => [1, 4, 9, 16]

# .detect/.find => devuelve el primero para el que el bloque sea verdadero (true)
p (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
p (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

# .find_all { |obj| block } or .select { |obj| block } => devuelve un arreglo que contiene todos los elementos de enum para el que el bloque sea verdadero.
p (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

# .reject { |obj| block } => lo opuesto de find_all
p (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

# drop(n) → array
# Drops first n elements from enum, and returns rest elements in an array.
a = [1, 2, 3, 4, 5, 0]
p a.drop(3)             #=> [4, 5, 0]