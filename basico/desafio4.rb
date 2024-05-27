valor_deposito = gets.to_f
saldo = 0

if valor_deposito > 0
  saldo += valor_deposito
  puts "Deposito realizado com sucesso!\nSaldo atual: R$ #{'%.2f' %saldo}"
elsif valor_deposito < 0
  puts "Valor invalido! Digite um valor maior que zero."
else
  puts "Encerrando o programa..."
end
