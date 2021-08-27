# Cree un arreglo con los siguientes valores 3,5,1,2,7,9,8,13,25,32. Muestre la suma de todos los números del arreglo. Haz que la función también devuelva un arreglo que incluya solo los números que sean mayores a 10 (ejemplo: cuando pasas el arreglo anterior, debe devolver un arreglo con los valores de 13, 25, 32 - Pista: utilice los métodos reject o find_all.
def getSumOfALlAndMajorThan(array, number)
  sum = array.inject(0){|sum,x| sum + x }
  majors = array.filter{|item| item > number}
  return [ sum, majors]
end
p getSumOfALlAndMajorThan([3,5,1,2,7,9,8,13,25,32], 24)
p getSumOfALlAndMajorThan([3,5], 3)

# Cree un arreglo con los siguientes valores: John, KB, Oliver, Cory, Matthew, Christopher. Mezcla el arreglo y muestre el nombre de cada persona. Haz que el programa devuelva un arreglo con los nombres que tengan una longitud mayor a 5 caracteres.
def mixNamesAndReturnLongesThan(array, numberOfCharacters)
  mixedArraya = array.shuffle()
  longestNames = array.select { |item| item.length > numberOfCharacters}
  return [mixedArraya, longestNames]
end
p mixNamesAndReturnLongesThan(['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher'], 4)

# Cree un arreglo que contenga las 26 letras del alfabeto (este arreglo tiene que tener 26 valores). Mézclalo y muestre la primera y la última letra del arreglo. Si la primera letra del arreglo es una vocal, haz que muestre un mensaje.
def mixLettersAndFindVocal()
  array = ('a'..'z').to_a
  array =  array.shuffle
  vocals = ['a', 'e', 'i', 'o', 'u']
  response = vocals.include?(array[0]) ? "You get a vocal '#{array[0]}' 😎😎😎😎"  : "The '#{array[0]}' letter is not a vocal 😢😢😢😢"
  return response
end
p mixLettersAndFindVocal()

# Genere un arreglo con 10 números aleatorios entre 55 - 100.
def getArrayWithRandomNUmbers(arrayLength, initialRange, finaleRange)
 return Array.new(arrayLength) { rand(initialRange...finaleRange) }
end
p getArrayWithRandomNUmbers(10,0,9) #(arrayLength, initialRange, finaleRange)

# Genere un arreglo con 10 números aleatorios entre 55 - 100 y haz que esté en orden (el número más pequeño en la primera posición). Muestre todos los números del arreglo. Por último, muestre el valor mínimo y el valor máximo del arreglo.
def getRandomArrayLength(length, minRange, maxRange)
  array = Array.new(length) { rand(minRange...maxRange) }
  array = array.sort_by(&:to_i)
  return [array, "The min value is #{array.first} and the max is #{array.last} sir. 😎😎😎😎"]
end
p getRandomArrayLength(10, 50, 100) #(length, minRange, maxRange)

def getRandomStringOfLength(length)
  return (0...length).map { (65 + rand(26)).chr }.join
end
p getRandomStringOfLength(5)

# Genere un arreglo con 10 cadenas aleatorias de 5 caracteres cada una.
def generateArrayWhitRandomStringsOfLength(length)
  return Array.new(length) { getRandomStringOfLength(5) }
end
p generateArrayWhitRandomStringsOfLength(10)