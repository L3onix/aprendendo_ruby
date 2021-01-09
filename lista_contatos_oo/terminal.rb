def put_menu_cabecalho(title)
    system "clear"
    puts "========== #{title} =========="
end
def put_menu_principal
    # Apresentando menu
    put_menu_cabecalho "LISTA DE CONTATOS"
    puts "1 - Buscar contato"
    puts "2 - Adicionar contato"
    puts "3 - Adicionar a um contato existente"
    puts "0 - Sair"
end
