# Solicita ao usuário a entrada para o número de testes passados e converte para inteiro
testes_passados = gets.to_f
total_testes = gets.to_f
# puts testes_passados.class
# puts total_testes.class

# TODO: Calcule a taxa de sucesso e armazene-a na variável taxa_sucesso
taxa_sucesso = (testes_passados / total_testes) * 100

# Exibe a taxa de sucesso com 2 casas decimais
print "Taxa de sucesso: #{'%.2f' % taxa_sucesso}%"
