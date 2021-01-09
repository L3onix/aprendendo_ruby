=begin
autor: Leonardo Facundes (Leonix)
=end

require "./menu.rb"
require "./contato.rb"

contato = Contato.new
menu = Menu.new

while menu.menu_option != 0
    #INICIANDO PROGRAMA
    menu.put_menu_principal
    menu.menu_option = gets.chomp.to_i

    #SELEÇÃO DE MENU
    case menu.menu_option
    when 1
        menu.put_menu_header "BUSCAR CONTATO"
        contato.buscar_contato
    when 2
        menu.put_menu_header "ADICIONAR CONTATO"
        contato.adicionar_contato
    else
        menu.put_menu_header "SAINDO"
    end
end

puts contato.contatos