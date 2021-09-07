class Mamifero
    
    def show_salud()
      p "La salud actual es de: #{@salud}"
    end

    def increment_salud(amount)
      @salud = @salud + amount
      p "La salud ha variado en: #{amount}"
    end
end