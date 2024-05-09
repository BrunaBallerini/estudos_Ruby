require_relative "ui"

def acha_heroi mapa
  heroi = "H"
  quantidade_linhas = mapa.size-1
  for linha in 0..quantidade_linhas
    quantidade_colunas = mapa[linha].size-1
    for coluna in 0..quantidade_colunas
      valor_da_posicao = mapa[linha][coluna]
        if valor_da_posicao == heroi
          linha_heroi = linha
          coluna_heroi = coluna
        end
    end
  end
  return linha_heroi, coluna_heroi
end

def movimenta_para_cima mapa, direcao, linha_heroi, coluna_heroi
  puts "ANTES: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"
  linha_antes_movimento = linha_heroi
  linha_heroi -= 1
  linha_depois_movimento = linha_heroi
  mapa[linha_depois_movimento][coluna_heroi] = "H"
  mapa[linha_antes_movimento][coluna_heroi] = "|"
  puts "DEPOIS: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"

  return mapa
end

def movimenta_para_baixo mapa, direcao, linha_heroi, coluna_heroi
  puts "ANTES: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"
  linha_antes_movimento = linha_heroi
  linha_heroi += 1
  linha_depois_movimento = linha_heroi
  mapa[linha_depois_movimento][coluna_heroi] = "H"
  mapa[linha_antes_movimento][coluna_heroi] = "|"
  puts "DEPOIS: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"

  return mapa
end

def movimenta_para_direita mapa, direcao, linha_heroi, coluna_heroi
  puts "ANTES: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"
  coluna_antes_movimento = coluna_heroi
  coluna_heroi += 1
  coluna_depois_movimento = coluna_heroi
  mapa[linha_heroi][coluna_depois_movimento] = "H"
  mapa[linha_heroi][coluna_antes_movimento] = "-"
  puts "DEPOIS: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"

  return mapa
end

def movimenta_para_esquerda mapa, direcao, linha_heroi, coluna_heroi
  puts "ANTES: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"
  coluna_antes_movimento = coluna_heroi
  coluna_heroi -= 1
  coluna_depois_movimento = coluna_heroi
  mapa[linha_heroi][coluna_depois_movimento] = "H"
  mapa[linha_heroi][coluna_antes_movimento] = "-"
  puts "DEPOIS: linha_heroi = #{linha_heroi}, coluna_heroi = #{coluna_heroi}"

  return mapa
end


def joga nome
  numero = 1
  mapa = le_mapa numero
  while true
    desenha mapa
    direcao = pede_movimento
    puts "direcao = #{direcao}"

    linha_heroi, coluna_heroi = acha_heroi mapa

    if direcao == "w"
      movimenta_para_cima mapa, direcao, linha_heroi, coluna_heroi
    end

    if direcao == "s"
      movimenta_para_baixo mapa, direcao, linha_heroi, coluna_heroi
    end

    if direcao == "d"
      movimenta_para_direita mapa, direcao, linha_heroi, coluna_heroi
    end

    if direcao == "a"
      movimenta_para_esquerda mapa, direcao, linha_heroi, coluna_heroi
    end

  end
end
