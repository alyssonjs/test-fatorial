def get_fact(n)
    return throw_err(n) unless n.is_a? Integer
    return nil if n < 0
    return 1 if n == 0
    
    value = (1..n).to_a
    fatorial = 1
    
    value.each do |v|
        fatorial *= v
    end

   fatorial

end

def throw_err(value)
    "Não é possivel calculor o fatorial de #{value}, pois ele não é um número inteiro"
end