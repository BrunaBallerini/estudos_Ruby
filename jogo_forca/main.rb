require_relative "ui"
require_relative "forca"

enforcou = false
acertou = false
pontuacao = 0
simbolo = "*"
erros = 0
quer_jogar = true

da_boa_vindas
while quer_jogar
  pontuacao_inicial pontuacao
  pontuacao = joga enforcou, acertou, pontuacao, simbolo, erros
  quer_jogar, enforcou, acertou = quer_jogar_novamente quer_jogar
end
