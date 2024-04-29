# Jogo que verifica se número do jogador é igual ao número secreto

def da_boa_vindas
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize!
  puts "Começando o jogo para você: #{nome_jogador} \n"
end


def sorteia_numero_secreto
  numero_secreto_sorteado = 175
end


def pede_um_numero numero_da_jogada
  puts "Tentativa #{numero_da_jogada.to_s}: Digite o número para chute\n"
  chute = gets.to_i
end


def verifica_se_acertou numero_sorteado, chute_do_jogador
 acertou = numero_sorteado == chute_do_jogador
  maior = numero_sorteado > chute_do_jogador

  if acertou
    puts "Parabens! Você acertou!"
    return true
  else
    puts "Você errou!"
    puts "O número secreto é maior" if maior
    puts "O número secreto é menor" unless maior
    return false
  end
end


da_boa_vindas
numero_secreto = sorteia_numero_secreto
jogada = 1
numero_de_jogadas = 5
while jogada < numero_de_jogadas

  chute = pede_um_numero jogada

  break if verifica_se_acertou numero_secreto, chute

  jogada = jogada + 1

end
