# Solicita ao usuário os valores necessários para calcular o valor final do investimento
valor_inicial = gets.to_f
taxa_juros = gets.to_f
periodo = gets.to_i

def calcular_valor_final(valor_inicial, taxa_juros, periodo)
  valor_final = valor_inicial
  taxa_juros_porcentagem = taxa_juros + 1
  periodo_para_calculo = periodo - 1

  # TODO: Itera, com base no período em anos, para calcular o valor final com os juros.
  for _ in 0..periodo_para_calculo do
    valor_final *= taxa_juros_porcentagem
  end

  # Retorna o valor final do investimento, arredondado para duas casas decimais
  return valor_final.round(2)
end

# Calcula o valor final do investimento
valor_final = calcular_valor_final(valor_inicial, taxa_juros, periodo)

# Exibe o valor final do investimento
print "Valor final do investimento: R$ #{valor_final}"
