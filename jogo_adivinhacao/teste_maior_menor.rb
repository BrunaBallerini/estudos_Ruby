# Testes relacionados à verificação do número do jogo da adivinhação

puts "175" == 175
puts "175".to_i == 175
puts "175" != 175
puts 27 > 175
puts 27 < 175
puts 27 >= 175
puts "=============="
numero = 0
while numero < 5
  puts numero
  numero = numero + 1
end
puts "=============="
for i in 1..3
  puts "contando " + i.to_s
end
puts "=============="
chutes_antigos = [176, 130, 150, 175]
puts chutes_antigos[1]
for chute in chutes_antigos
  puts "Chutes: " + chute.to_s
end
puts "=============="
chutes_antigos.append(190)
chutes_antigos << 10
puts "=============="
puts "Chutes: #{chutes_antigos.to_s}"
puts "=============="
nome = "         bruna ballerini         "
puts nome.size
nome_melhorado = nome.strip
puts nome_melhorado.size
nome_chomp = nome.chomp
puts nome_chomp.size
puts "=============="
puts rand(50)
puts rand(50)
puts "=============="
situação = gets.to_i
case situação
when 1
  puts "1"
when 2
  puts "2"
when 3
  puts "3"
else
  puts "else"
end
