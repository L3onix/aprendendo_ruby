require './livro.rb'
class LivroSuspense < Livro
    def initialize(ano, autor, paginas, titulo)
        super(ano, autor, paginas, titulo)
    end
    def nivel_de_suspense
        rand(10)
    end
end
