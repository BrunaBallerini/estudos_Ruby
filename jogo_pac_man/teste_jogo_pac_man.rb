palavra = "estudo"
palavra.each_char.with_index do |letra, index|
  puts "#{index} - #{letra}"
end
puts "=============================="
palavra = "outro_estudo"
palavra.chars.each_with_index do |letra, index|
  puts "#{index} - #{letra}"
end
puts "=============================="
linha_mapa = ["X H X", "X   H"]
indice = linha_mapa[1].index "H"
puts indice
puts "=============================="
caminho_arquivo = "jogo_pac_man/mapa2.txt"
texto = File.read caminho_arquivo
mapa = texto.split ("\n")
mapa.each_with_index do |linha_atual, index|
  coluna = linha_atual.index "H"
  if coluna
      puts "#{index} - #{coluna}"
  end
end
puts "=============================="
caminho_arquivo = "jogo_pac_man/mapa2.txt"
texto = File.read caminho_arquivo
mapa = texto.split ("\n")
caractere_fantasma = "F"
mapa.each_with_index do |linha_atual, linha|
  linha_atual.each_char.with_index do |caractere_atual, coluna|
    if caractere_fantasma == caractere_atual
        puts "#{caractere_fantasma} = #{linha} - #{coluna}"
    end
  end
end
puts "=============================="
frutas = ["banana", "maça", "pera"]
p1 = frutas.join("\n")
p2 = p1.tr("a", "8")
novas_frutas = p2.split("\n")
p novas_frutas
puts "=============================="
caminho_arquivo = "jogo_pac_man/mapa2.txt"
texto = File.read caminho_arquivo
mapa = texto.split ("\n")
heroi = "H"
fantasma = "F"
mapa.each_with_index do |linha_atual, linha_index|
  coluna_index = linha_atual.index(heroi)
  puts "#{heroi} = #{linha_index} - #{coluna_index}" if coluna_index
end
mapa.each_with_index do |linha_atual, linha_index|
  linha_atual.each_char.with_index do |caractere, coluna_index|
    if caractere == fantasma
      puts "#{fantasma} = #{linha_index} - #{coluna_index}"
    end
  end
end
puts "=============================="
palavra = "compra"
palavra << "s"
puts palavra
puts "=============================="
lista = ["fruta", "maça", "banana"]
lista << "mamão"
p lista
puts "=============================="
array_tem_alguma_coisa = ["algo"]
if array_tem_alguma_coisa.any?
  puts "true"
end
array_vazio = []
if array_vazio.empty?
  puts "true"
end
puts "=============================="
numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
numero = numeros.sample
puts numero
puts "=============================="
