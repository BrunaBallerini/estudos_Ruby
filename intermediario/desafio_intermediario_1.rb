def verificar_forca_senha(senha)
  comprimento_minimo = 8
  comprimento_senha = senha.length

  # Critérios de validação usando expressões regulares
  tem_letra_maiuscula = /[A-Z]/.match?(senha)
  tem_letra_minuscula = /[a-z]/.match?(senha)
  tem_numero = /\d/.match?(senha)
  tem_caractere_especial = /\W/.match?(senha)

  # Convertendo a senha para minúsculas para evitar problemas de case
  senha_minuscula = senha.downcase

  # Verificar se a senha contém sequências comuns
  tem_sequencia_comum = senha_minuscula.include?("123456") || senha_minuscula.include?("abcdef")

  # Verificar se a senha contém palavras comuns
  tem_palavra_comum = senha_minuscula == "password" || senha_minuscula == "123456" || senha_minuscula == "qwerty"

  #TODO: Verificar o comprimento mínimo e critérios de validação
  if tem_letra_maiuscula && tem_letra_minuscula && tem_numero && tem_caractere_especial
    return "Sua senha atende aos requisitos de seguranca. Parabens!"
  elsif comprimento_senha < comprimento_minimo
    return "Sua senha e muito curta. Recomenda-se no minimo 8 caracteres."
  elsif tem_sequencia_comum && tem_palavra_comum
    return "Sua senha nao atende aos requisitos de seguranca."
  else
    return "Sua senha nao atende aos requisitos de seguranca."
  end
end

senha = gets.chomp
resultado = verificar_forca_senha(senha)
puts resultado
