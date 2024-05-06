def da_boa_vindas
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize.chomp
  puts "Começando o jogo para você: #{nome_jogador}"
end

def pontuacao_inicial pontuacao
  puts "Você tem #{pontuacao} pontos. Boa sorte!\n"
end

def define_palavra_secreta
  palavra_secreta = "estudo"
  puts "A palavra secreta tem #{palavra_secreta.size}."
  return palavra_secreta
end

def pede_um_letra
  puts "Digite uma letra:\n"
  chute = gets.strip.chomp.downcase
  return chute
end

def quer_jogar_novamente quer_jogar
  puts "Você quer jogar novamente? (s/n)"
  resposta = gets.strip.capitalize
  if resposta == "S"
    quer_jogar = true
    enforcou = false
    acertou = false
  else
    quer_jogar = false
  end
  return quer_jogar, enforcou, acertou
end

enforcou = false
acertou = false
pontuacao = 0
simbolo = "*"
erros = 0
quer_jogar = true

da_boa_vindas
while quer_jogar
  pontuacao_inicial pontuacao
  palavra_secreta = define_palavra_secreta
  array_formando_palavra = [simbolo] * palavra_secreta.size
  array_chutes_errados = []

  while !enforcou && !acertou
    acertou_letra = false
    letra_chute = pede_um_letra
    ja_tentou_essa_letra_errou = array_chutes_errados.include?(letra_chute)
    ja_tentou_essa_letra_acertou = array_formando_palavra.include?(letra_chute)

    if ja_tentou_essa_letra_errou || ja_tentou_essa_letra_acertou
      puts "Você já tentou essa letra."
      next
    end

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

    if !acertou_letra
      erros += 1
      array_chutes_errados.append(letra_chute)
      puts "Você errou a letra. Tente novamente"
    end

    puts "Palavra: #{array_formando_palavra}"
    puts "Erros: #{erros}"
    puts "Chutes errados #{array_chutes_errados}"

    if !array_formando_palavra.include?(simbolo)
      acertou = true
      puts "Parabens! Pontuação: #{pontuacao}"
      break
    elsif erros == 6
      enforcou = true
      puts "Não conseguiu! Pontuação #{pontuacao}"
      break
    end
  end

  quer_jogar, enforcou, acertou = quer_jogar_novamente quer_jogar
end
