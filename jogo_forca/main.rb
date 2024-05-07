require_relative "ui"
require_relative "forca"
require_relative "rank"

enforcou = false
acertou = false
pontuacao = 0
simbolo = "*"
erros = 0
quer_jogar = true

nome = da_boa_vindas
while quer_jogar
  pontuacao_inicial pontuacao

  mostra_campeao_atua le_rank

  pontuacao = joga enforcou, acertou, pontuacao, simbolo, erros

  pontuacao_maior = pontuacao > le_rank[1].to_i
  if pontuacao_maior
    salva_rank nome, pontuacao
  end

  quer_jogar, enforcou, acertou = quer_jogar_novamente quer_jogar
end
