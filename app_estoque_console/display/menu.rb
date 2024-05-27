def menu_initiaze(produtos = [])
    loop do
    yellow_message("Escolha uma das opções abaixo:\n", false, false)
    blue_message("Opção 1 - Cadastro de produtos", false, false)
    blue_message("Opção 2 - Lista de produtos", false, false)
    blue_message("Opção 3 - Retirada do estoque", false, false)
    blue_message("Opção 4 - Sair", false, false)

    opcao = gets.to_i

    case opcao
    when 1
      mensage "CADASTRO DE PRODUTOS"
      product_registration(produtos)
    when 2
      mensage "LISTA DE PRODUTOS"
    when 3
      mensage "RETIRADA DO ESTOQUE"
    when 4
      mensage "SAIR"
      clean_screen
      exit
    else
      mensage "OPÇÃO INVÁLIDA"
    end

  end
end
