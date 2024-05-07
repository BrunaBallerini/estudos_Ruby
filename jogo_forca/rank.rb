def salva_rank nome, pontuacao
  conteudo = "#{nome}\n#{pontuacao}"
  File.write "jogo_forca/rank.txt", conteudo
end

def le_rank
  conteudo_atual = File.read "jogo_forca/rank.txt"
  dados = conteudo_atual.split "\n"
  return dados
end
