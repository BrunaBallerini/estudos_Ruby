# Entrada de dados
saldo_total = gets.to_i
valor_saque = gets.to_i

# TODO: Criar as condições necessárias para impressão da saída, vide tabela de exemplos.
saldo_disponível = saldo_total >= valor_saque
if saldo_disponível
  saldo_total -= valor_saque
  puts "Saque realizado com sucesso! Novo saldo: #{saldo_total}"
  else
    puts "Saldo insuficiente. Saque nao realizado!"
end
