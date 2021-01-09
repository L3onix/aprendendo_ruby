class Telefone
    attr_accessor :ddd, :numero

    def initialize(ddd, numero)
        @ddd = ddd
        @numero = numero
    end 
    
    def apresentar_telefone
        puts "(#{@ddd}) #{@numero}"
    end
end