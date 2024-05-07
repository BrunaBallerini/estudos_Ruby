require_relative "ui"

def joga nome
  numero = 1
  mapa = le_mapa numero
  while true
    desenha mapa
    direcao = pede_movimento
    puts direcao
    break
  end
end
