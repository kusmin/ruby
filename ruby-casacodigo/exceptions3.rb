class IdadeInsuficienteException < Exception;
end

def verifica_idade(idade)
    raise IdadeInsuficienteException,
    "Você precisa ser maior de idade ..." unless idade > 18
end

begin 
    verifica_idade(13)
rescue IdadeInsuficienteException => e
    puts "Foi lançada a exception: #{e}"
end