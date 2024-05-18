# puts "Digite o nome:"
# # .gets pega os dados digitados
# nome = gets.chomp
# # .chomp removeu o \n
# puts "O seu nome é " + nome
# puts nome.inspect
# # .inspect mostra string com \n
# puts "=============================="
# a = "20"
# puts novo_a = a.to_f
# puts novo_a.class
# puts "Digite alguma coisa:"
# letra = gets.to_i
# puts letra.class
# puts letra
# puts "=============================="
# puts "Digite seu salário:"
# salario = gets.chomp.to_f
# puts salario
# puts salario.class
# puts "=============================="
h = {"x": 15, "curso": "rails"}
p h
puts h[:x]
puts h.class
nome = "Bruna"
puts nome.object_id
puts "=============================="
a = "Hello"
b = "Hello"
puts a.object_id
puts b.object_id
puts a.object_id == b.object_id
puts "=============================="
puts "Digite o telefone:"
telefone = gets.chomp

regex =/^\(\d{2}\) 9\d{4}\-\d{4}$/

escreve_em_verde = "\e[32m"
escreve_em_vermelho = "\e[31m"
reset = "\e[0m"

if telefone =~ regex
  puts "#{escreve_em_verde}#{telefone} válido#{reset}"
else
  puts "#{escreve_em_vermelho}#{telefone} inválido#{reset}"
end
