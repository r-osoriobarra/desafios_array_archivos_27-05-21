#Desafío 1 - proyecciones

#leer el archivo y transformarlo a array
sales = (File.open('ventas_base.db').read).split(',')
sales = array.map {|e| e.to_i}

#lógica cálculo de ventas anuales
def semester(array, percent)
    case percent
    when 10
        return result(1.1 ,1.0, sales)
    when 20
        return result(1.0, 1.2, sales)
    end
end

def result(x = 0.0 , y = 0.0, array)
    sem1 = ((array.take(6).sum) * x).round(2)
    sem2 = ((array.drop(6).sum) * y).round(2)
    anual_sales = sem1 + sem2
end

#llamar al método
s_10 = semester(sales, 10)
s_20 = semester(sales, 20)
anual_sales = [s_10, s_20]

#Guardar en archivo
File.write('resultados.data', anual_sales.join("\n"))