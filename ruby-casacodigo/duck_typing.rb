class Franquia
    def info
        puts "restaurante faz parte da franquia"
    end
end

class Restaurante < Franquia
end

restaurante = Restaurante.new
restaurante.info

class Franquia
    def info
        puts "Restaurante faz parte da franquia"
    end

    def method_missing(name, *args)
        @restaurante.each do |r|
            return "O restaurante #{r.nome} já foi cadastrado!"
                 if r.nome.eql? *args
        end
        return "O restaurante #{args[0]} não foi cadastrado ainda."
    end
end


class Restaurante < Franquia
    def info
        super
        puts "Restaurante Fasano"
    end
end

restaurante2 = Restaurante.new
restaurante2.info


def informa(franquia)
    franquia.info
end

restaurante3 = Restaurante.new
informa restaurante3

puts franquia.já_cadastrado?("Fasano")
puts franquia.já_cadastrado?("restaurante3")

class Franquia
    def expandir(restaurante)
        def restaurante.cadastrar_vips
            puts "Restaurante #{self.nome} agora com área VIP!"
        end
    end
end
franquia.expandir restaurante3
restaurante3.cadastrar_vips


