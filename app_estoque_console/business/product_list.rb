require "terminal-table"

def product_list(produtos)
  mensage("Mostrando a lista de produtos...", true, true, 1)

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
    produtos.each do |product|
      t.add_row [product[:id], product[:nome], product[:descricao], product[:preco], product[:quantidade]]
    end
  end
  red_message(table, false, false)

end
