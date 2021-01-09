class Papagaio
    attr_accessor :nome, :idade

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end
    def repetir_frase(frase = "curupaco!")
        puts "#{@nome} > #{frase}"
    end
end

conrado = Papagaio.new("Conrado", 20)
conrado.repetir_frase("Sai Joy!")
conrado.repetir_frase