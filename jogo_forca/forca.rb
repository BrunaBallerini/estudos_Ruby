def da_boa_vindas
  puts "JOGO DE ADIVINHAÇÃO"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize!
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
  chute = gets.strip!
  return chute
end

def verifica_se_acertou palavra_secreta, letra_chute, pontuacao
  array_formando_palavra = []
  contador = 0
  palavra_secreta.each_char do |letra|
    if letra == letra_chute
      puts "#{letra} na posição #{contador}"
    else
      puts "não tem essa letra"
    end
    contador += 1
    puts array_formando_palavra
    array_formando_palavra[contador] = letra
  end
end

def quer_jogar_novamente quer_jogar
  puts "Você quer jogar novamente? (s/n)"
  resposta = gets.strip!
  if resposta == "s" or resposta == "S"
    quer_jogar = true
  else
    quer_jogar = false
  end
  return quer_jogar
end

da_boa_vindas
quer_jogar = true
while quer_jogar
  pontuacao = 1000
  pontuacao_inicial pontuacao
  palavra_secreta = define_palavra_secreta

  letra_chute = pede_um_letra
  verifica_se_acertou palavra_secreta, letra_chute, pontuacao

  puts "Pontos finais: #{pontuacao}"
  quer_jogar = quer_jogar_novamente quer_jogar
end
