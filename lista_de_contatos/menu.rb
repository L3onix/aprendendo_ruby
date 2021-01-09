
class Menu
    attr_accessor :menu_option

    def initialize
        @menu_option = 9
    end

    def put_menu_header(title)
        system "clear"
        puts "========== #{title} =========="
    end
    def put_menu_principal
        # Apresentando menu
        put_menu_header "LISTA DE CONTATOS"
        puts "1 - Buscar contato"
        puts "2 - Adicionar contato"
        puts "0 - Sair"
    end
end