# Jogo que verifica se número do jogador é igual ao número secreto

def da_boa_vindas pontuacao
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize!
  puts "Começando o jogo para você: #{nome_jogador} \n"
  puts "Você tem #{pontuacao} pontos. A cada erro você perde 200 pontos. Boa sorte!\n"
end

def sorteia_numero_secreto
  numero_secreto_sorteado = 175
  return numero_secreto_sorteado
end

def pede_um_numero numero_da_jogada
  puts "Tentativa #{numero_da_jogada.to_s}: Digite o número para chute\n"
  chute = gets.to_i
  return chute
end

def verifica_se_acertou numero_sorteado, chute_do_jogador, pontuacao
  acertou = numero_sorteado == chute_do_jogador
  maior = numero_sorteado > chute_do_jogador

  if acertou
    puts "Parabens! Você acertou!"
    return true, pontuacao
  else
    pontuacao -= 200
    puts "Você errou!"
    puts "O número secreto é maior" if maior
    puts "O número secreto é menor" unless maior
    return false, pontuacao
  end
end

pontuacao = 1000
da_boa_vindas pontuacao
numero_secreto = sorteia_numero_secreto
numero_de_jogadas = 5
chutes_antigos = []

for jogada in 1..numero_de_jogadas

  chute = pede_um_numero jogada
  chutes_antigos.append(chute)
  verdadeiro_para_acerto, pontuacao = verifica_se_acertou numero_secreto, chute, pontuacao
  break if verdadeiro_para_acerto
  puts "Chutes: #{chutes_antigos.to_s}"

end
puts "Pontos finais: #{pontuacao}"
