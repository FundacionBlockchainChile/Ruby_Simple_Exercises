a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]

def getNames(array)
  p "Tienes #{array.length} nombres en el arreglo 'nombres'"
  array.each { |user| p "El nombre es '#{user[:nombre]} #{user[:apellido]}'" }
end
getNames(nombres)