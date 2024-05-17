# Anotação
# puts _____.kind_of? Array

module Conversor
  def string_para_alfanumerico(titulo)
    titulo.gsub(/[^\w\s]/,'')
  end

  def string_formato_dinheiro (preco)
    valor = "R$ #{preco.to_s.tr(".", ",")}"
    valor << "0" unless valor.match (/(.*)(\d{2})$/)
    valor
  end
end

class Livro
  attr_reader :titulo, :preco, :ano_lancamento, :editora
  def initialize (titulo, preco, ano_lancamento,possui_reimpressao, editora = nil)
    @titulo = titulo.extend(Conversor).string_para_alfanumerico(titulo)
    @ano_lancamento = ano_lancamento
    @preco = String.new(calcula_preco(preco).to_s).extend(Conversor).string_formato_dinheiro(preco)
    @possui_reimpressao = possui_reimpressao
    @editora = editora
  end

  def possui_reimpressao
    return @possui_reimpressao
  end

  def to_csv
    return "Titulo: #{@titulo} - Ano de lançamento: #{@ano_lancamento} - Preço: #{@preco} - Editora: #{@editora}"
  end

  private
  def calcula_preco(base)
    if @ano_lancamento < 2006
        if @possui_reimpressao
            return base * 0.9
        else
            return base * 0.95
        end
    elsif @ano_lancamento <=2010
        return base * 0.96
    else
        return base
    end
  end

end

class Estoque
  attr_reader :maximo_necessario
  def initialize
    @livros = []
    @vendas = []
  end

  def livro_para_newsletter
    @livros.each do |livro|
      if livro.ano_lancamento < 2000
        puts "Newsletter"
        puts livro.to_csv
      end
    end
  end

  def imprime_estoque
    @livros.each do |livro|
      puts livro.to_csv
    end
  end

  def total_atual
    puts "Estoque atual: #{@livros.size}"
  end

  def adiciona_livro (livro)
    @livros << livro if livro
    if @maximo_necessario.nil? || @maximo_necessario < @livros.size
      @maximo_necessario = @livros.size
    end
  end

  def vende(livro)
    @livros.delete(livro)
    @vendas << livro
  end

  def vendas_realizadas
    puts "Vendas realizadas:"
    @vendas.each do |livro_vendido|
      puts "#{livro_vendido.to_csv}"
    end
  end

  def quantidade_vendas(produto)
    @vendas.count {|venda| venda.titulo == produto.titulo}
    # @vendas.each do |venda|
    #   if venda.titulo == produto.titulo
    #     quant = @vendas.count
    #   end
    #   return quant
    # end
  end

  def maximo_necessario
    puts "Estoque máximo: #{@maximo_necessario}"
  end

end

livro_rails = Livro.new("Agile Web Development with Rails", 70.00,  1999, true, "Rocco")
livro_ruby = Livro.new("Programming Ruby 1.9", 60.00, 2010, false, "Record")
livro_programador = Livro.new("The Pragmatic Programmer", 100, 2015, true)

estoque = Estoque.new
estoque.adiciona_livro(livro_rails)
estoque.adiciona_livro(livro_ruby)
estoque.adiciona_livro(livro_programador)

estoque.imprime_estoque
estoque.livro_para_newsletter
estoque.vende(livro_rails)
estoque.total_atual
estoque.maximo_necessario

estoque.vendas_realizadas
puts estoque.quantidade_vendas(livro_rails)
