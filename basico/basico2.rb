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

end

livro_rails = Livro.new("Agile Web Development with Rails", 70.00,  1999, true)
livro_ruby = Livro.new("Programming Ruby 1.9", 60.00, 2010, false)

livros = [livro_rails, livro_ruby]


def livro_para_newsletter(livros)
  livros.each do |livro|
    if livro.ano_lancamento < 2000
      puts "Newsletter -> #{livro.titulo} -> R$ #{livro.preco} - #{livro.possui_reimpressao}"
    end
  end
end


def imprime_nota_fiscal (livros)
  livros.each do |livro|
    puts "Titulo: #{livro.titulo} - #{livro.preco}"
  end
end

imprime_nota_fiscal(livros)
livro_para_newsletter(livros)
