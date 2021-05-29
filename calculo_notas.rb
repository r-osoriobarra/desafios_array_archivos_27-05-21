#Desafío 2 - calculo_notas

#leer el archivo y transformarlo a array
data = (File.open('notas.data').read).split("\n")
marks = data.map {|e| e.split(',')}

#lógica de nota mayor
def nota_mas_alta(array)
    marks = array.map {|e| e.to_i}.max
end

nota_mas_alta(marks[0])