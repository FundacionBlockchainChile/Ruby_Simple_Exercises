# Mostrar 1-255
# Escriba un programa que muestre todos los números del 1 al 255.
def printRange
  (1..255).each { |n| puts n }
end
printRange()

# Mostrar números impares entre 1 y 255
# Escriba un programa que muestre todos los números impares del 1 al 255.
def printEven
  (1..255).each { |n| puts n if n % 2 != 0 }
end
printEven()

# Muestre la suma
# Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento.
def showSuma
  sum = 0
  (0..255).each { |n| 
    sum = sum + n
    puts "Nuevo numero: #{n} Suma: #{sum}"
  }
end
showSuma()

# Recorriendo un arreglo
# Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un arreglo es sumamente importante.
def showArrayItems(array)
  array.each { |item| puts item }
end
showArrayItems([1, 3, 5, 7, 9, 13])

# Encontrar el máximo
# Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.
def findMax (array)
  max = array.max
  puts max
end
findMax([1, 3, 5, 7, 9, 13])
findMax([-3, -5, -7])

# Promedio
# Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.
def findAvrg(array)
  sum = 0
  array.each { |item| sum = sum + item }
  return sum / array.length
end
puts findAvrg([2, 10, 3])

# Arreglo con números impares
# Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].
def getEvenNumbersFrom
  return (1..255).select(&:odd?)
end
puts getEvenNumbersFrom

# Mayor que Y
# Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).
def getNumberOfMajorsFrom(array, number)
  majors = 0
  array.each do |item|
    majors += 1 if item>number
  end
  return majors
end
p getNumberOfMajorsFrom([1, 3, 5, 7], 3)

# Elevar al cuadrado
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].
def transformItemsToSquares(array)
  array.each_with_index do |item, index|
    array[index] = item * item
  end
  return array
end
p transformItemsToSquares([1, 5, 10, -2])

# Eliminar números negativos
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
def transforNegativeItemsToCero(array)
  array.each_with_index do |item, index|
    array[index]=0 if item<0
  end
  return array
end
p transforNegativeItemsToCero([1, 5, 10, -2])

# Max, Min, y Promedio
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, el valor mínimo y el promedio de los valores en el arreglo.
def getMaxMinAvgFrom(array)
  max = array.max
  min = array.min
  avg = array.inject{ |sum, el| sum + el }.to_f / array.size
  return [max, min, avg]
end
p getMaxMinAvgFrom([1, 5, 10, -2])
p getMaxMinAvgFrom([2, 4, 6, 8])

# Cambiar los valores en el arreglo
# Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición. Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].
def changeValuesForNexItem(array)
  newArray = []
  array.each_with_index do |item, index|
    array[index+1] != nil ? newArray[index]=array[index+1] : newArray[index]=0
  end
  return newArray
end
p changeValuesForNexItem([1, 5, 10, 7, -2])

# Números a cadenas
# Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].
def changeNegativesToDojo(array)
  array.each_with_index do |item, index|
    array[index] = 'Dojo' if array[index] < 0
  end
  return array
end
p changeNegativesToDojo([-1, -3, 2])





  

