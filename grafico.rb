#Desafio 4 - grafico

def chart(array)
    #imprimir grafico
    array.each do |i|
        print "|"
        (2 * i).times do 
            print "*" 
        end
        print "\n"
    end
    #imprimir eje x
    length = array.max
    print ">"
    (2 * length).times do
        print "-" 
    end
    #imprimir escala eje x
    print "\n"
    print "\s"
    length.times do |i| 
        "#{i + 1} "
    end
end