require './lib/factorial'
def menu
    p "Digite o numero cujo qual você quer saber o fatorial"
    number = Integer(gets) rescue 'Apenas numeros inteiros são validos'

    p get_fact(number)
    
end

menu