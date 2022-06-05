class Restaurante
    def initialize(nome)
        puts "criando um novo restaurante: #{nome}"
        @@total ||= 0
        @@total = @@total + 1
        @nome = nome
    end

    class << self
        def relatorio
            puts "foram criados #{@@total} restaurantes"
        end
    end
    
end

restaurante_um = Restaurante.new("facil")
restaurante_dois = Restaurante.new("easy")
restaurante_tres = Restaurante.new("medio")
restaurante_quatro = Restaurante.new("hard")
restaurante_cinco = Restaurante.new("tmj")

Restaurante.relatorio