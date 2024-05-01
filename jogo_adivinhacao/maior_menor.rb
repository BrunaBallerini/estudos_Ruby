# Jogo que verifica se número do jogador é igual ao número secreto

def da_boa_vindas
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize!
  puts "Começando o jogo para você: #{nome_jogador} \n"
end

def pontuacao_inicial pontuacao
  puts "Você tem #{pontuacao} pontos. A cada erro você perde 200 pontos. Boa sorte!\n"
end

def pede_dificuldade
  puts "Qual o nível de dificuldade:\n"
  puts "1 - Fácil (Números: 1-50)\n2 - Médio (Números: 1-100)\n3 - Dificil (Números: 1-150)"
  nivel_de_dificuldade = gets.to_i
  return nivel_de_dificuldade
end

def sorteia_numero_secreto nivel_de_dificuldade
  facil = nivel_de_dificuldade  == 1
  medio = nivel_de_dificuldade  == 2
  dificil = nivel_de_dificuldade  == 3
  if facil
    valor_maximo = 50
  elsif medio
    valor_maximo = 100
  elsif dificil
    valor_maximo = 150
  else
    valor_maximo = 200
  end
  numero_secreto_sorteado = rand(valor_maximo)
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

def quer_jogar_novamente quer_jogar
  puts "Você quer jogar novamente? (s/n)"
  resposta = gets.strip!
  if resposta == "s" or resposta == "S"
    quer_jogar = true
  else
    quer_jogar = false
    puts "entrei no false"
  end
  return quer_jogar
end

da_boa_vindas
quer_jogar = true
while quer_jogar
  pontuacao = 1000
  pontuacao_inicial pontuacao
  nivel_de_dificuldade = pede_dificuldade
  numero_secreto = sorteia_numero_secreto nivel_de_dificuldade
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
  quer_jogar = quer_jogar_novamente quer_jogar
end
