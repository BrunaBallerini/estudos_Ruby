puts "Digite o nome:"
# .gets pega os dados digitados
nome = gets.chomp 
# .chomp removeu o \n
puts "O seu nome é " + nome
puts nome.inspect
# .inspect mostra string com \n
a = "20"
puts novo_a = a.to_f
puts novo_a.class 
puts "Digite alguma coisa:"
letra = gets.to_i
puts letra.class
puts letra
puts "Digite seu salário:"
salario = gets.chomp.to_f
puts salario
puts salario.class