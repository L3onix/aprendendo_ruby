require './terminal.rb'
require './contato.rb'
require './telefone.rb'
require './telefone_internacional.rb'

lista_contatos = []
menu = 9

# Contatos para teste
lista_contatos.push(Contato.new("Leonardo", TelefoneInternacional.new("55", "63", "9999-9999")))
lista_contatos.push(Contato.new("Eonan", Telefone.new("63", "9999-8888")))
lista_contatos.push(Contato.new("Haron", Telefone.new("63", "8888-9999")))


while menu != 0
    put_menu_cabecalho "MENU PRINCIPAL"
    put_menu_principal

    menu = gets.chomp.to_i

    case menu
    when 1
        put_menu_cabecalho "BUSCAR CONTATO"
        if !lista_contatos.any?
            puts "Lista de contatos está vazia!"
            puts "Pressione ENTER para continuar..."
            gets
        else
            puts "Qual o nome do contato?"
            nome = gets.chomp
            put_menu_cabecalho "CONTATO"
            #filter_contacts(lista_contatos, nome)
            lista_contatos.select{|contato| 
                contato.pessoa.nome.downcase.include? nome.downcase
            }.map{|contato| 
                contato.apresentar_contato
            }
            puts "\nPressione ENTER para continuar"
            gets
        end
    when 2
        put_menu_cabecalho "ADICIONAR NOVO CONTATO"
        puts "Qual o nome do contato?"
        nome = gets.chomp
        puts "Informe DDD do contato"
        ddd = gets.chomp
        puts "Informe o número do contato"
        numero = gets.chomp
        lista_contatos.push(Contato.new(nome, ddd, numero))
    when 3
        put_menu_cabecalho "ADICIONAR A UM CONTATO EXISTENTE"
        puts ""
    else
        put_menu_cabecalho "SAINDO"
    end
end
