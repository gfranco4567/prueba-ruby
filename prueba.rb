def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end

array = read_alum('alumnos.csv')

#[["David", "9", "2", "5", "1", "1"], ["Macarena", "10", "2", "A", "8", "1"], ["Ignacio", "10", "10", "9", "9", "A"], ["Rocio", "10", "10", "10", "10", "10"]]

def menu
  puts '1) Imprimir en pantalla el nombre de cada alumno y el promedio de sus notas'
  puts '2) Imprimir en pantalla el nombre de cada alumno y la cantidad de inasistencias'
  puts '3) Imprimir en pantalla los nombres de los alumnos aprobados'
  puts '4) Termina el programa'
end

menu
puts 'Ingrese una opción: '
opcion = gets.chomp.to_i

while opcion != 4
  #iterar

  # 1) Imprimir en pantalla el nombre de cada alumno y el promedio de sus notas_ OK
  if opcion == 1
    array.each do |usuario|
      nombre = usuario[0]
      notas_alum = usuario[1..-1].map { |num| num.to_f }
      promedio = notas_alum.sum / 5
      puts "\nNombre: #{nombre}, Promedio de notas: #{promedio}"
    end

    # 2) Imprimir en pantalla el nombre de cada alumno y la cantidad de inasistencias_
  elsif opcion == 2
    # falta
    total_temporal = 0
    ausencias = 0

    array.each do |usuario|
      nombre = usuario[0]
      notas_alum = usuario[1..-1].map

      notas_alum.each do |notas|
        if notas_alum.include? "A"
          ausencias = total_temporal + 1
        else
          ausencias = 0
        end
      end
      puts "\nNombre: #{nombre}, Inasistencias: #{ausencias}"
    end

    # 3) Imprimir en pantalla los nombres de los alumnos aprobados_ OK
  elsif opcion == 3
    array.each do |usuario|
      nombre = usuario[0]
      notas_alum = usuario[1..-1].map { |num| num.to_f }
      promedio = notas_alum.sum / 5

    def aprobado?(promedio, nota_de_aprobación = 5.0)
      promedio >= nota_de_aprobación
    end

if aprobado?(promedio) == true
  puts "\n#{nombre} está aprobado, ya que su promedio fue nota #{promedio}."
else
  puts "\n#{nombre} está reprobado, ya que su promedio fue nota #{promedio}."
end
end

# Cuando ingresan otro número_ OK
  else
    puts "Ingrese una opción válida"
  end

  puts '--------------------'

  menu
  puts 'Ingrese una opción: '
  opcion = gets.chomp.to_i

end

# 4) Termina el programa
puts "Adios!! :)"
