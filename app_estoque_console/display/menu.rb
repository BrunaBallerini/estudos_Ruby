def menu_initiaze(products)
    loop do
    yellow_message("Escolha uma das opções abaixo:\n", false, false)
    blue_message("Opção 1 - Cadastro de produtos", false, false)
    blue_message("Opção 2 - Lista de produtos", false, false)
    blue_message("Opção 3 - Retirada do estoque", false, false)
    blue_message("Opção 4 - Sair", false, false)

    opcao = gets.to_i

    case opcao
    when 1
      product_registration(products)
    when 2
      product_list(products)
    when 3
      removing_product(products)
    when 4
      green_message("Saindo do programa.")
      clean_screen
      exit
    else
      red_message("Opção inválida!")
    end

  end
end
