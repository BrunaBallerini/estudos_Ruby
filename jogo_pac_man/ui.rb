def da_boa_vindas
  puts "JOGO DE PAC-MAN"
  puts "Digite seu nome:\n"
  nome_jogador = gets.capitalize.chomp
  puts "Começando o jogo para você: #{nome_jogador}"
  return nome_jogador
end

def le_mapa numero
  caminho_arquivo = "jogo_pac_man/mapa#{numero}.txt"
  texto = File.read caminho_arquivo
  mapa = texto.split ("\n")
  return mapa
end

def desenha mapa
  puts
  puts mapa
  puts
end

def pede_movimento
  puts "Para onde deseja ir?"
  movimento = gets.strip.downcase
  return movimento
end

def game_over
  puts "Você perdeu!"
  puts "GAME OVER!"
end
