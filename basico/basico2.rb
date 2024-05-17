# Anotação
# puts _____.kind_of? Array

module Conversor
  def string_para_alfanumerico(titulo)
    titulo.gsub(/[^\w\s]/,'')
  end
end

class Livro
  attr_reader :titulo, :preco, :ano_lancamento
  def initialize (titulo, preco, ano_lancamento,possui_reimpressao)
    @titulo = titulo.extend(Conversor).string_para_alfanumerico(titulo)
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @possui_reimpressao = possui_reimpressao
  end

  def possui_reimpressao
    return @possui_reimpressao
  end

  def to_csv
    return "Titulo: #{@titulo} - #{@preco}"
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

  def remove_livros(livro)
    @livros.delete(livro)
  end

  def maximo_necessario
    puts "Estoque máximo: #{@maximo_necessario}"
  end

end

livro_rails = Livro.new("Agile Web Development with Rails", 70.00,  1999, true)
livro_ruby = Livro.new("Programming Ruby 1.9", 60.00, 2010, false)
livro_programador = Livro.new("The Pragmatic Programmer", 100, 2015, true)

estoque = Estoque.new
estoque.adiciona_livro(livro_rails)
estoque.adiciona_livro(livro_ruby)
estoque.adiciona_livro(livro_programador)

estoque.imprime_estoque
estoque.livro_para_newsletter
estoque.remove_livros(livro_rails)
estoque.total_atual
estoque.maximo_necessario
