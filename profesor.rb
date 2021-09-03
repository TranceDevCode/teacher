class Profesor
  attr_reader :horastrabajadas, :antiguedad, :grado, :minutostardanza, :nombre 
  def initialize (rut, nombre, apellido, grado, antiguedad, horastrabajadas, minutostardanza)
   @rut= rut
   @nombre= nombre
   @apellido= apellido
   @grado= grado
   @antiguedad= antiguedad
   @horastrabajadas= horastrabajadas
   @minutostardanza= minutostardanza
  end

   def docentes
    puts "Rut #{@rut}, nombre #{@nombre}, #{@apellido}, con grado de #{@grado}, y antiguedad de #{@antiguedad} años, tiene #{@horastrabajadas} horas trabajadas, y #{@minutostardanza} de tardanza"
   end

   def gradodocente
    if  @grado == "titulado"
      puts "muestro los de grado titulado"
      #puts "Rut #{@rut}, nombre #{@nombre}, #{@apellido}, con grado de #{@grado}, y antiguedad de #{@antiguedad} años, tiene #{@horastrabajadas} horas trabajadas, y #{@minutostardanza} de tardanza"
    end
   end

   def antiguedad
     if @antiguedad > 15
        return 0.10
     elsif @antiguedad >= 11 or @antiguedad <= 15
        return 0.07
     elsif @antiguedad >= 7 or @antiguedad <= 10
        return 0.05
     elsif @antiguedad >= 4 or @antiguedad <= 6
        return 0.04
     else 
        return 0.03
     end
    end

    def tardanza
      if @minutostardanza === 0
        return 120
      elsif @minutostardanza >= 1 or @minutostardanza <= 5
        return 80
      elsif @minutostardanza >= 6 or @minutostardanza <= 10
        return 40
      elsif @minutostardanza >= 11 or @minutostardanza <= 15
        return 0
      else
        return -40
      end
    end

    def sueldogrado
      if @grado == "bachiller"
        return 40
      elsif @grado == "titulado"
        return 80
      elsif @grado == "maestria"
        return 100
      else
        return 180 
      end 
    end

    

end

profe1 = Profesor.new("18.082.748-1", "Javier", "Gonzales", "titulado", 4, 150, 40)
profe2 = Profesor.new("13.672.233-9", "Claudia", "Guitierrez", "maestria", 8, 150, 40)

profes = [profe1, profe2]

profes.each do |profe|
  profe.docentes
end

puts (profe1.horastrabajadas * profe1.sueldogrado)  * profe1.antiguedad

#profes.sueldogrado

# profe1.docentes
# profe2.docentes

#llamo al metodo sueldo, y le ingreso un parametro o argumento -> sueldo(profe1)


