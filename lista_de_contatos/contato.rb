class Contato
    attr_accessor :contatos

    def initialize
        @contatos = []
    end

    def adicionar_contato
        puts "Digite o nome do contato:"
        nome = gets.chomp
        puts "Digite o número do contato:"
        numero = gets.chomp
        @contatos.push({nome: nome, numero: numero})
    end
    def buscar_contato
        puts "Digite o nome do contato:"
        nome = gets.chomp

        @contatos.each do |contato|
            if contato[:nome] == nome
                puts "CONTATO => #{nome} : #{contato[:numero]}"
                gets
            end
        end
    end
end