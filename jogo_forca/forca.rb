def define_palavra_secreta
  arquivo = File.new("jogo_forca/dicionario.txt")
  quantidade_de_palavras = arquivo.gets.to_i
  numero = rand(quantidade_de_palavras)
  for _ in (1..numero-1)
    arquivo.gets
  end
  palavra_secreta = arquivo.gets.strip.downcase
  arquivo.close
  mostra_tamanho_palavra_secreta palavra_secreta
  return palavra_secreta
end

def joga enforcou, acertou, pontuacao, simbolo, erros

  palavra_secreta = define_palavra_secreta
  array_formando_palavra = [simbolo] * palavra_secreta.size
  array_chutes_errados = []

  while !enforcou && !acertou
    acertou_letra = false
    letra_chute = pede_um_letra
    ja_tentou_essa_letra_errou = array_chutes_errados.include?(letra_chute)
    ja_tentou_essa_letra_acertou = array_formando_palavra.include?(letra_chute)

    if ja_tentou_essa_letra_errou || ja_tentou_essa_letra_acertou
      informa_que_ja_tentou_essa_letra
      next
    end

    contador = 0
    palavra_secreta.each_char do |letra|
      acertou_chute = letra == letra_chute
      if acertou_chute
        array_formando_palavra[contador] = letra
        acertou_letra = true
        pontuacao += 10
      end
      contador += 1
    end

    if !acertou_letra
      erros += 1
      array_chutes_errados.append(letra_chute)
      informa_que_errou_letra
    end

    mostra_palavra_e_erros array_formando_palavra, erros, array_chutes_errados

    if !array_formando_palavra.include?(simbolo)
      acertou = true
      informa_que_ganhou pontuacao
      break
    elsif erros == 6
      enforcou = true
      informa_que_perdeu pontuacao
      break
    end

  end

  return pontuacao

end
