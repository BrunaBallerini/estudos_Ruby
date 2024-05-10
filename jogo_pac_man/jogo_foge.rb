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

def posicao_valida? mapa, linha_antes_movimento, linha_depois_movimento, coluna_depois_movimento
  obstaculo = "X"
  encontrar_caractere_x = mapa[linha_depois_movimento][coluna_depois_movimento] == obstaculo
  if encontrar_caractere_x
    return false
  end

  chegar_na_borda_mapa_direita = coluna_depois_movimento == mapa[linha_antes_movimento].size
  if chegar_na_borda_mapa_direita
    return false
  end

  chegar_na_borda_mapa_esquerda = coluna_depois_movimento == -1
  if chegar_na_borda_mapa_esquerda
    return false
  end
  return true
end

def movimenta_heroi linha_heroi, coluna_heroi, direcao, mapa
  heroi = "H"
  vazio = " "

  linha_antes_movimento = linha_heroi
  coluna_antes_movimento = coluna_heroi

  case
    when direcao == "w"
      linha_heroi -= 1
    when direcao == "s"
      linha_heroi += 1
    when  direcao == "d"
      coluna_heroi += 1
    when direcao == "a"
      coluna_heroi -= 1
    else
      puts "Direção inválida"
      return
  end
  coluna_depois_movimento = coluna_heroi
  linha_depois_movimento = linha_heroi

  if !posicao_valida? mapa, linha_antes_movimento, linha_depois_movimento, coluna_depois_movimento
    return
  end

  mapa[linha_depois_movimento][coluna_depois_movimento] = heroi
  mapa[linha_antes_movimento][coluna_antes_movimento] = vazio

end

def joga nome
  numero = 1
  mapa = le_mapa numero
  while true

    desenha mapa
    direcao = pede_movimento
    linha_heroi, coluna_heroi = acha_heroi mapa
    movimenta_heroi linha_heroi, coluna_heroi, direcao, mapa

  end
end
