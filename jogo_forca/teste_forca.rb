palavra = "estudo"
palavra.each_char do |letra|
  puts letra
end
puts "=============================="
array_palavra = []
index = 0
for letra in palavra.chars
  array_palavra[index] = letra
  index += 1
end
print "#{array_palavra}\n"
puts "=============================="
array_ = palavra.chars
print "#{array_}\n"
puts "=============================="
array_formando_palavra = []
index = 0
for _ in (0...palavra.size)
  array_formando_palavra[index] = "*"
  index += 1
end
print "#{array_formando_palavra}\n"
puts "=============================="
lista = ["a", "b", "c"]
letra = "d"
if not lista.include?(letra)
  puts "#{letra} não está na lista."
end
if !lista.include?(letra)
  puts "#{letra} não está na lista."
end
unless lista.include?(letra)
  puts "#{letra} não está na lista."
end
puts "=============================="
array_formando_palavra = ["2", "6", "4"]
simbolo = "*"
if not array_formando_palavra.include?("*")
  puts "#{simbolo} não está na lista."
else
  puts "#{simbolo} está na lista."
end
puts "=============================="
def verifica_se_acertou array_formando_palavra, acertou_letra, palavra_secreta, letra_chute, pontuacao
  contador = 0
  palavra_secreta.each_char do |letra|
    acertou_chute = letra == letra_chute
    if acertou_chute
      array_formando_palavra[contador] = letra
      acertou_letra = true
      pontuacao += 10
    end
    contador += 1
  end
return array_formando_palavra, acertou_letra
end
array_formando_palavra = ["*", "*", "*", "*", "*", "*"]
acertou_letra = false
palavra_secreta = "estudo"
letra_chute = "t"
pontuacao = 0
array, acerto = verifica_se_acertou array_formando_palavra, acertou_letra, palavra_secreta, letra_chute, pontuacao
puts "array: #{array}"
puts "acerto: #{acerto}"
puts "=============================="
frase = "alguma coisa que tenha a"
letra = "a"
contador = frase.count letra
puts contador
puts "=============================="
def define_palavra_secreta
  string_palavras = File.read("jogo_forca/dicionario.txt")
  array_palavras = string_palavras.split "\n"
  numero = rand(array_palavras.size)
  palavra_secreta = array_palavras[numero].downcase
  return palavra_secreta
end
palavra = define_palavra_secreta
puts palavra
puts "=============================="
def define_palavra_secreta
  arquivo = File.new("jogo_forca/dicionario.txt")
  quantidade_de_palavras = arquivo.gets.to_i
  numero = rand(quantidade_de_palavras)
  for _ in (1..numero-1)
    arquivo.gets
  end
  palavra_secreta = arquivo.gets.downcase
  arquivo.close
  puts palavra_secreta
end
define_palavra_secreta
puts "=============================="
