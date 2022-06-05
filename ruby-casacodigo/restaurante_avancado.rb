# def qualifica(nota, msg="Obrigado")
#     puts "A nota do restaurante foi #{nota}. #{msg}"
# end

# qualifica(10)
# qualifica(1, "comida ruim")

# class Restaurante
#     def qualifica( msg="Obrigado")
#         puts "A nota do #{@nome} foi #{@nota}. #{msg}."
#     end
# end



# class Fixnum
#     def +(outro)
#         self - outro
#     end
# end

# puts(10+5)

# class Restaurante
# attr_accessor :nota
#     def initialize(nome)
#         puts "criando um novo restaurante: #{nome}"
#         @nome = nome
#     end
# end

# restaurante_um = Restaurante.new("Fasano")
# restaurante_dois = Restaurante.new("Fogo de chao")

# restaurante_um.nota= 10
# restaurante_dois.nota= 1

# restaurante_um.qualifica
# restaurante_dois.qualifica("ruim!")

class Franquia

    def initialize
        @restaurantes = []
    end

    def adiciona(*restaurantes)
        for restaurante in restaurantes
            @restaurantes << restaurante
        end
    end

    def mostra
        @restaurantes.each do |restaurante|
            puts restaurante.nome
        end
    end

    def relatorio
        @restaurantes.each do |r|
            yield r
        end
    end
end

class Restaurante
    attr_accessor :nome

    def fechar_conta(dados)
        puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentario: #{dados[:comentario]}"
    end
end

restaurante_um = Restaurante.new
restaurante_dois = Restaurante.new

restaurante_um.nome=  "Fasano"
restaurante_dois.nome= "Fogo de chao"
restaurante_um.fechar_conta valor: 50, nota:9, comentario: 'Gostei!'

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

franquia.relatorio do |r|
    puts "restaurante cadastrado: #{r.nome}"
end

franquia.mostra

class Restaurante
    def initialize(nome)
        puts "criando um novo restaurante: #{nome}"
        @@total ||= 0
        @@total = @@total + 1
        puts "restaurantes criados: #{@@total}"
        @nome = nome
    end
end