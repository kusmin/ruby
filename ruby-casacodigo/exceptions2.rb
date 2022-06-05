def verifica_idade(idade)
    unless idade > 18
        raise ArgumentError,
        "Voce precisa ser maior de idade para jogar jogos violentos"
    end
end

verifica_idade(16)