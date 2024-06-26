# Entrada de dados
numero_conta = gets.to_i
nome_titular = gets
saldo = gets.to_f

class ContaBancaria
  # TODO: Insira os métodos da classe
  attr_accessor :numero_conta, :nome_titular, :saldo
  def initialize(numero_conta, nome_titular, saldo)
    @numero_conta = numero_conta
    @nome_titular = nome_titular
    @saldo = saldo
  end
end

# TODO: Crie uma instância de "ContaBancaria" com os valores de Entrada
cliente = ContaBancaria.new(numero_conta, nome_titular, saldo)

puts "Informacoes:"
# TODO: Imprima as informações da conta
puts "Conta: #{cliente.numero_conta}"
puts "Titular: #{cliente.nome_titular}"
puts "Saldo: R$ #{cliente.saldo}"
