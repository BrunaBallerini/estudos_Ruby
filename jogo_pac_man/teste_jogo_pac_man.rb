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
