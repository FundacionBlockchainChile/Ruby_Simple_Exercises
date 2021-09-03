class Proyecto

  @@no_of_branches = 0

  def initialize(nombre, description) 
    @branch_nombre = nombre 
    @branch_description = description 
    @@no_of_branches += 1 
    p "Created branch #{@@no_of_branches}"
  end

  def nombre
    puts "#{@branch_nombre}"
  end

  def presentacion
    p "#{@branch_nombre}, #{@branch_description}"
  end

end
proyecto1 = Proyecto.new("Proyecto 1", "Descripción 1")
puts proyecto1.nombre # => "Proyecto 1"
proyecto1.presentacion  # => "Proyecto 1, Descripción 1"