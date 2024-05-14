require_relative "ui"

def acha_heroi mapa
  heroi = "H"
  mapa.each_with_index do |linha, linha_index|
    coluna_index = linha.index(heroi)
    if coluna_index
      return linha_index, coluna_index
    end
  end
  return nil
end

def posicao_valida? mapa, linha_depois_movimento, coluna_depois_movimento
  chegar_na_borda_mapa_baixo = linha_depois_movimento == mapa.size
  if chegar_na_borda_mapa_baixo
    return false
  end

  chegar_na_borda_mapa_cima = linha_depois_movimento == -1
  if chegar_na_borda_mapa_cima
    return false
  end

  obstaculo = "X"
  encontrar_caractere_x = mapa[linha_depois_movimento][coluna_depois_movimento] == obstaculo
  if encontrar_caractere_x
    return false
  end

  fantasma = "F"
  encontrar_fantasma = mapa[linha_depois_movimento][coluna_depois_movimento] == fantasma
  if encontrar_fantasma
    return false
  end

  chegar_na_borda_mapa_direita = coluna_depois_movimento == mapa[linha_depois_movimento].size
  if chegar_na_borda_mapa_direita
    return false
  end

  chegar_na_borda_mapa_esquerda = coluna_depois_movimento == -1
  if chegar_na_borda_mapa_esquerda
    return false
  end
  return true
end

def movimenta_heroi direcao, mapa
  linha_heroi, coluna_heroi = acha_heroi mapa
  linha_nova, coluna_nova = linha_heroi, coluna_heroi

  case direcao
    when "w"
      linha_nova -= 1
      coluna_nova += 0
    when "s"
      linha_nova += 1
      coluna_nova += 0
    when "d"
      linha_nova += 0
      coluna_nova += 1
    when "a"
      linha_nova += 0
      coluna_nova -= 1
    else
      puts "Direção inválida"
      return
    end

  heroi = "H"
  vazio = " "
  if posicao_valida? mapa, linha_nova, coluna_nova
    mapa[linha_nova][coluna_nova] = heroi
    mapa[linha_heroi][coluna_heroi] = vazio
  end
end

def copia_mapa mapa
  novo_mapa = mapa.join("\n").tr("F", " ").split("\n")
  return novo_mapa
end

def movimenta_fantasma mapa
  fantasma = "F"
  novo_mapa = copia_mapa mapa
  mapa.each_with_index do |linha_atual, linha_index|
    linha_atual.each_char.with_index do |caractere_atual, coluna_index|
      encontrou_fantasma = caractere_atual == fantasma
      if encontrou_fantasma
        direcoes_possiveis = []

        cima = [linha_index - 1, coluna_index]
        valido_cima = posicao_valida?(mapa, linha_index - 1, coluna_index) && posicao_valida?(novo_mapa, linha_index - 1, coluna_index)
        direcoes_possiveis << cima  if valido_cima

        baixo = [linha_index + 1, coluna_index]
        valido_baixo = posicao_valida?(mapa, linha_index + 1, coluna_index) && posicao_valida?(novo_mapa, linha_index + 1, coluna_index)
        direcoes_possiveis << baixo if valido_baixo

        esquerda = [linha_index, coluna_index - 1]
        valido_esquerda = posicao_valida?(mapa, linha_index, coluna_index - 1) && posicao_valida?(novo_mapa, linha_index, coluna_index - 1)
        direcoes_possiveis << esquerda if valido_esquerda

        direita = [linha_index, coluna_index + 1]
        valido_direita = posicao_valida?(mapa, linha_index, coluna_index + 1) && posicao_valida?(novo_mapa, linha_index, coluna_index + 1)
        direcoes_possiveis << direita if valido_direita

        if direcoes_possiveis.any?
            nova_posicao = direcoes_possiveis.sample
            mapa[linha_index][coluna_index] = " "
            novo_mapa[nova_posicao[0]][nova_posicao[1]] = fantasma
        end
      end
    end
  end
  return novo_mapa
end

def jogador_perdeu? mapa
  jogador_perdeu = !acha_heroi(mapa)
  return jogador_perdeu
end

def joga nome
  numero = 2
  mapa = le_mapa numero
  jogando = true
  while jogando

    desenha mapa
    direcao = pede_movimento
    movimenta_heroi direcao, mapa
    mapa = movimenta_fantasma mapa

    if jogador_perdeu? mapa
      game_over
      jogando = false
    end

  end
end
