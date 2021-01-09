class Livro
    attr_reader :paginas, :autor, :titulo, :ano

    def initialize(ano, autor, paginas, titulo)
        @ano = ano
        @autor = autor
        @paginas = paginas
        @titulo = titulo
    end

    def tempo_de_leitura
        puts "#{@paginas / 5} dias"
    end
end