require_relative "display/menu"
require_relative "display/screen_operation"
require_relative "business/product_registration"
require_relative "business/product_list"
require_relative "business/removing_product"

products = [
  {
    id: 1,
    nome: "Banana",
    descricao: "Nanica",
    preco: 5.20,
    quantidade: 500,

  },
  {
    id: 2,
    nome: "Maçã",
    descricao: "Gala",
    preco: 6.8,
    quantidade: 2000,

  },
]
menu_initiaze(products)
