def product_registration(product)
  mensage("Iniciando cadastro do produto", true, true, 1.5)
  blue_message("Digite o nome do produto", false, false)
  nome_produto = gets.chomp
  puts nome_produto
  clean_screen
end
