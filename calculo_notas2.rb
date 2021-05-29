#Desafío 3 - calculo_notas 2

#leer el archivo y transformarlo a array
data = (File.open('notas.data').read).split("\n")
marks = data.map {|e| e.split(',')}

#lógica de nota mayor
def nota_mas_alta(array)
    high_marks = array.map do |i|
                    i.map {|e| e.to_i}.max
                end
    return high_marks
end

nota_mas_alta(marks)