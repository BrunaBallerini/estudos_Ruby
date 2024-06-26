# Entrada de dados
data_inicial_str = gets.chomp
data_final_str = gets.chomp

class SistemaAcionistas
  def obterAnalisesDesempenho(data_inicial_str, data_final_str)
    data_inicial = parse_data(data_inicial_str)
    data_final = parse_data(data_final_str)

		# Lista de análises com datas e descrições.
    analises = [
      Analise.new(parse_data("01/04/2023"), "Analise de Politicas e Regulamentacoes"),
      Analise.new(parse_data("05/01/2023"), "Analise de Riscos e Exposicoes"),
      Analise.new(parse_data("05/03/2023"), "Analises Corporativas"),
      Analise.new(parse_data("05/04/2023"), "Analise de Politicas e Regulamentacoes"),
      Analise.new(parse_data("20/05/2023"), "Analise de Ativos"),
      Analise.new(parse_data("30/06/2023"), "Analise de Inovacao e Tecnologia")
    ]
    analises_descricao = []

		# TODO: Filtre as análises que estão dentro do intervalo de datas especificado.
    analises.each do |analise|
      if analise.data == data_inicial || analise.data == data_final
        analises_descricao << analise.descricao
      end
    end
    # TODO: Retorne apenas as descrições das análises filtradas.
    return analises_descricao
  end

  private
	# Método privado para analisar a string de data e converter para um objeto de data.
  def parse_data(data_str)
    dia, mes, ano = data_str.split('/').map(&:to_i)
    Time.new(ano, mes, dia)
  end
end

# Classe Analise que representa uma análise com uma data e uma descrição.
class Analise
  attr_reader :data, :descricao
  # TODO: Inicialize uma análise com uma data e uma descrição.
  def initialize(data, descricao)
    @data = data
    @descricao = descricao
  end
end

sistema_acionistas = SistemaAcionistas.new
# TODO: Faça a chamada do método para obter análises de desempenho dentro do intervalo especificado.
lista_descrições  = sistema_acionistas.obterAnalisesDesempenho(data_inicial_str, data_final_str)
# TODO: Imprima as descrições das análises obtidas.
puts lista_descrições
