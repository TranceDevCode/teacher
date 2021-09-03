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

profe1 = Profesor.new("18.082.748-1", "Javier", "Gonzales", "titulado", 4, 150, 40)
profe2 = Profesor.new("18.082.748-1", "Javiera", "Guitierrez", "titulado", 4, 150, 40)

profe1.docentes
profe2.docentes
