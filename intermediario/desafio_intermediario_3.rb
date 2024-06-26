#  Lê o tipo de cofre (primeira linha da entrada)
tipo_cofre = gets.chomp

class Cofre
  attr_reader :tipo, :metodo_abertura

  def initialize(tipo, metodo_abertura)
    @tipo = tipo
    @metodo_abertura = metodo_abertura
  end

  def imprimir_informacoes
    puts "Tipo: #{@tipo}"
    puts "Metodo de abertura: #{@metodo_abertura}"
  end
end

# TODO: Defina a Classe CofreDigital, subclasse de Cofre
class CofreDigital < Cofre
end

class CofreFisico < Cofre
end

if tipo_cofre.downcase == "digital"
  # Lê a senha do cofre digital
  senha = gets.chomp.to_i
  cofre_digital = CofreDigital.new("Cofre Digital", "Senha")
	# TODO: Complete implementando as condições para a abertura do cofre
  confirma_senha = gets.chomp.to_i
  cofre_digital.imprimir_informacoes
  if senha == confirma_senha
    puts "Cofre aberto! "
  else
    puts "Senha incorreta!"
  end
elsif tipo_cofre.downcase == "fisico"
  cofre_fisico = CofreFisico.new("Cofre Fisico", "Chave")
  cofre_fisico.imprimir_informacoes
end
