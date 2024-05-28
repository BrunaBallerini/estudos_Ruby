def removing_product(products)
  product_list(products)
  mensage("Digite o id do produto que você gostaria de remover: ", false, false)
  id = gets.to_i
  product = products.find{|p| p[:id] == id}

  if product
    blue_message("Digite a quantidade que deseja retirar do estoque do produto: #{product[:nome]}", false, false)
    blue_message("Quantidade atual: #{product[:quantidade]}", false, false)
    quantity_to_remove = gets.to_i

    ok_to_remove = product[:quantidade] > quantity_to_remove

    if ok_to_remove
      product[:quantidade] = product[:quantidade] - quantity_to_remove
      green_message("Retirada realizada com sucesso!", true, true, 3)
    else
      red_message("Não pode retirar essa quantidade.", true, true, 3)
    end
    product_list(products)

  else
    clean_screen
    red_message("Produto do ID (#{id}) não encontrado na lista", false, false)
    yellow_message("Deseja digitar o numero novamente? (s/n)", false, false)
    option = gets.chomp.downcase
    s_and_uppercase_s = option == "s" || option == "sim"
    if s_and_uppercase_s
      removing_product(products)
    else
      return
    end
  end
end


  # unless product
  #   clean_screen
  #   red_message("Produto do ID (#{id}) não encontrado na lista", false, false)
  #   yellow_message("Deseja digitar o numero novamente? (s/n)", false, false)
  #   option = gets.chomp.downcase
  #   s_and_uppercase_s = option == "s" || option == "sim"
  #   if s_and_uppercase_s
  #     removing_product(products)
  #   end
  #   return
  # end

  # blue_message("Digite a quantidade que deseja retirar do estoque do produto: #{product[:nome]}", false, false)
  # blue_message("Quantidade atual: #{product[:quantidade]}", false, false)
  # quantity_to_remove = gets.to_i

  # ok_to_remove = product[:quantidade] > quantity_to_remove

  # if ok_to_remove
  #   product[:quantidade] = product[:quantidade] - quantity_to_remove
  #   green_message("Retirada realizada com sucesso!", true, true, 3)
  # else
  #   red_message("Não pode retirar essa quantidade.", true, true, 3)
  # end
  # product_list(products)
