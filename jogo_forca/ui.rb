def da_boa_vindas
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize.chomp
  puts "Começando o jogo para você: #{nome_jogador}"
  return nome_jogador
end

def pontuacao_inicial pontuacao
  puts "Você tem #{pontuacao} pontos. Boa sorte!\n"
end

def mostra_tamanho_palavra_secreta palavra_secreta
  puts "A palavra secreta tem #{palavra_secreta.size}."
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

def informa_que_ja_tentou_essa_letra
  puts "Você já tentou essa letra."
end

def informa_que_errou_letra
  puts "Você errou a letra. Tente novamente"
end

def mostra_palavra_e_erros array_formando_palavra, erros, array_chutes_errados
  puts "Palavra: #{array_formando_palavra}"
  puts "Erros: #{erros}"
  puts "Chutes errados #{array_chutes_errados}"
end

def informa_que_ganhou pontuacao
  puts "Parabens! Pontuação: #{pontuacao}"
end

def informa_que_perdeu pontuacao
  puts "Não conseguiu! Pontuação #{pontuacao}"
end

def mostra_campeao_atua dados
  puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end
