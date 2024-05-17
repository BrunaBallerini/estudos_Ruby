# Anotação
# puts _____.kind_of? Array
class Livro
  attr_reader :titulo, :preco, :ano_lancamento
  def initialize (titulo, preco, ano_lancamento,possui_reimpressao)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @possui_reimpressao = possui_reimpressao
  end

  def possui_reimpressao
    return @possui_reimpressao
  end

  def calcula_preco (base)
    if @ano_lancamento < 2000
      base *= 0.7
    end
    return base
  end

  def to_csv
    return "Titulo: #{@titulo} - #{@preco}"
  end

end

class Estoque
  def initialize
    @livros = []
  end

  def livro_para_newsletter
    @livros.each do |livro|
      if livro.ano_lancamento < 2000
        puts "Newsletter -> #{livro.titulo} -> R$ #{livro.preco} - #{livro.possui_reimpressao}"
      end
    end
  end

  def imprime_nota_fiscal
    @livros.each do |livro|
      puts livro.to_csv
    end
  end

  def livros_mais_baratos_que(valor)
    @livros.select {|livro| livro.preco <= valor}
  end

  def total
    puts "Estoque total: #{@livros.size}"
  end

  def adiciona_livro (livro)
    @livros << livro if livro
  end

end

livro_rails = Livro.new("Agile Web Development with Rails", 70.00,  1999, true)
livro_ruby = Livro.new("Programming Ruby 1.9", 60.00, 2010, false)

estoque = Estoque.new
estoque.adiciona_livro(livro_rails)
estoque.adiciona_livro(livro_ruby)
estoque.adiciona_livro(Livro.new("The Pragmatic Programmer", 100, 2015, true))

estoque.imprime_nota_fiscal
estoque.livro_para_newsletter
estoque.total

barato = estoque.livros_mais_baratos_que(80)
puts "Livros mais baratos que 80,00:"
barato.each do |livro|
  puts livro.titulo
end
