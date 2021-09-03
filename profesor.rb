class Profesor
  def initialize (rut, nombre, apellido, grado, antiguedad, horastrabajadas, minutostardanza)
   @rut= rut
   @nombre= nombre
   @apellido= apellido
   @grado= grado
   @antiguedad= antiguedad
   @horastrabajadas= horastrabajadas
   @minutostardanza= minutostardanza

   def docentes
    puts "#{@rut}, #{@nombre}, #{@apellido}, #{@grado}, #{@antiguedad}, #{@horastrabajadas}, #{@minutostardanza}"
   end

  end
end

profes= Profesor.new("18.082.748-1", "Javier", "Gonzales", "titulado", 4, 150, 40) 
profes.docentes
