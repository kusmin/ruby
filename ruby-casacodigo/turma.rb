class Turma
    def initialize(*alunos)
        @alunos = alunos
    end

    def lista
        @alunos.each do |nome|
            yield nome
        end
    end
end

fj91 = Turma.new("Guilherme", "Paulo", "Sergio")

fj91.lista do |nome|
    puts nome
end