# Crear metodo que reciva precios y calcule IVA.
def getPrice(price, iva)
  return price + (price * iva)
end
p getPrice(1000, 0.19)

# Crear metodo que reciva Array de precios y calcule IVA.
def getPriceFormArray(array, iva)
  return array.map { | item | getPrice(item, iva) }
end
p getPriceFormArray([1000,2000,3000], 0.19)

# Crear metodo que reciva Array de precios y calcule Despacho.
def getTotalWithDelivery(array, city)
  totalProducts = array.sum
  totalProducts = totalProducts + 3000 if city == 'Santiago'
  totalProducts = totalProducts + 10000 if city == 'Region'
  return totalProducts 
end

p getTotalWithDelivery([1000,2000,3000], 'Santiago')
p getTotalWithDelivery([1000,2000,3000], 'Region')