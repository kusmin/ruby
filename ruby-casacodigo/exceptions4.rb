def pesquisa_banco(nome)
    if nome.size < 10
        throw :nome_invalido, "nome invalido, digite novamente"
    end
    "cliente #{nome}"
end

def executa_pesquisa(nome)
    catch :nome_invalido do 
        cliente = pesquisa_banco(nome)
        return cliente 
    end
end


puts executa_pesquisa("ana")

puts executa_pesquisa("renan ribeiro lage")



require '/conta.rb'

puts Conta.new(500).saldo