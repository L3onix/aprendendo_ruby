require './telefone.rb'

class TelefoneInternacional < Telefone
    attr_accessor :country_code

    def initialize(country_code, ddd, numero)
        super(ddd, numero)
        @country_code = country_code
    end

    def apresentar_telefone
        puts "+#{@country_code} (#{@ddd}) #{@numero}"
    end
end 