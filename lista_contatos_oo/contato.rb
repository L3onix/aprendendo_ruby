require "./telefone.rb"
require "./telefone_internacional.rb"
require "./pessoa.rb"
require "./terminal.rb"

class Contato
    attr_accessor :pessoa, :telefones

    def initialize(nome, telefone)
        @pessoa = Pessoa.new(nome)
        @telefones = [telefone]
    end
    def adicionar_telefone(telefone)
        @telefones.push(telefone)
    end
    def apresentar_contato
        puts "NOME >> #{@pessoa.nome}"
        puts "CONTATOS >>"
        @telefones.each do |telefone|
            #puts "(#{telefone.ddd}) #{telefone.numero}"
            telefone.apresentar_telefone
        end
    end
    def push_telefone
        puts "Insira o código do país (opcional):"
        country_code = gets.chomp
        puts "Insira DDD:"
        ddd = gets.chomp
        puts "Inrisa número:"
        numero = gets.chomp
        
        if country_code.empty?
            adicionar_telefone(Telefone.new(ddd, numero))
        else
            adicionar_telefone(TelefoneInternacional.new(country_code, ddd, numero))
        end
    end
end