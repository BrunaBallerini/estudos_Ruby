def product_registration(product)
  mensage("Iniciando cadastro do produto...", true, true, 1)
  blue_message("Digite o nome do produto", false, false)
  nome_produto = gets.chomp
  puts nome_produto
  clean_screen

  blue_message("Digite a descrição do produto #{nome_produto}", false, false)
  descricao = gets.to_s
  puts descricao
  clean_screen

  blue_message("Digite o preço do produto #{nome_produto}", false, false)
  preco = gets.to_f
  puts preco
  clean_screen

  blue_message("Digite a quantidade em estoque do produto #{nome_produto}", false, false)
  quantidade = gets.to_s
  puts quantidade
  clean_screen

  product << {
    id: Time.now.to_i,
    nome: nome_produto,
    descricao: descricao,
    preco: preco,
    quantidade: quantidade,
  }

  green_message("Produto registrado!", true, true, 1)

end
