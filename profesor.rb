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
    if @grado == "titulado"
      puts "grado titulado"
      puts "Rut #{@rut}, nombre #{@nombre}, #{@apellido}, con grado de #{@grado}, y antiguedad de #{@antiguedad} años, tiene #{@horastrabajadas} horas trabajadas, y #{@minutostardanza} de tardanza"
    end
   end

   def antiguedades
     if @antiguedad >= 15
        return 0.10
     elsif @antiguedad >= 11 and @antiguedad <= 15
        return 0.07
     elsif @antiguedad >= 7 and @antiguedad <= 10
        return 0.05
     elsif @antiguedad >= 4 and @antiguedad <= 6
        return 0.04
     else 
        return 0.03
     end
    end

    def tardanza
      if @minutostardanza === 0
        return 120
      elsif @minutostardanza >= 1 and @minutostardanza <= 5
        return 80
      elsif @minutostardanza >= 6 and @minutostardanza <= 10
        return 40
      elsif @minutostardanza >= 11 and @minutostardanza <= 15
        return 0  
      else
        return - 40
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

    # def sueldomes
    #    puts ((profe1.horastrabajadas * profe1.sueldogrado) + (profe1.horastrabajadas * profe1.sueldogrado * profe1.antiguedades) + (profe1.tardanza))
    # end

end

profe1 = Profesor.new("18.082.748-1", "Javier", "Gonzales", "titulado", 4, 150, 5)
profe2 = Profesor.new("17.572.839-7", "Claudia", "Guitierrez", "maestria", 8, 150, 40)
profe3 = Profesor.new("16.471.677-3", "Carlos", "Herrera", "maestria", 8, 120, 20)
profe4 = Profesor.new("17.370.798-0", "Camila", "Gallardo", "titulado", 4, 140, 10)

profes = [profe1, profe2, profe3, profe4]

#
profes.each do |profe|
  #profe.docentes 
  sueldo = ((profe.horastrabajadas * profe.sueldogrado) + (profe.horastrabajadas * profe.sueldogrado * profe.antiguedades) + (profe.tardanza))
  puts "#{profe.docentes} y su sueldo es #{sueldo} "
  profe.gradodocente

  puts " el sueldo por grado es #{profe.sueldogrado}"
end



# puts ((profe2.horastrabajadas * profe2.sueldogrado) + (profe2.horastrabajadas * profe2.sueldogrado * profe2.antiguedades) + (profe2.tardanza))
# puts ((profe3.horastrabajadas * profe3.sueldogrado) + (profe3.horastrabajadas * profe3.sueldogrado * profe3.antiguedades) + (profe3.tardanza))
# puts ((profe4.horastrabajadas * profe4.sueldogrado) + (profe4.horastrabajadas * profe4.sueldogrado * profe4.antiguedades) + (profe4.tardanza))

# puts "***sueldos profes"

# puts profe1.docentes + "y su sueldo es" + sueldoprofe1

#
# "+" (profe.horastrabajadas * profe.sueldogrado) * profe.antiguedad
# puts (profe1.horastrabajadas * profe1.sueldogrado)  * profe1.antiguedades
# puts (profe2.horastrabajadas * profe2.sueldogrado)  * profe2.antiguedades
# puts (profe3.horastrabajadas * profe3.sueldogrado)  * profe3.antiguedades
# puts (profe4.horastrabajadas * profe4.sueldogrado)  * profe4.antiguedades

#profes.sueldogrado

# profe1.docentes
# profe2.docentes

#llamo al metodo sueldo, y le ingreso un parametro o argumento -> sueldo(profe1)


