class Cachorro
    attr_accessor :nome
    attr_reader :raca

    def initialize(nome, raca)
        @nome = nome 
        @raca = raca
    end

    def latir
        puts "AU AU!"
    end
end

nina = Cachorro.new("Nina", "SRD")
nina.latir