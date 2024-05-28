class Pessoa
  attr_accessor :nome, :sobrenome

  # setter
  # def nome=(value)
  #     @nome = value
  # end

  # getter
  # def nome
  #     @nome
  # end

  def mostra_nome_completo
    "#{@nome} #{@sobrenome}"
  end
end

a = Pessoa.new
a.nome = "Marcos"
a.sobrenome = "Lemon"
# puts a.inspect
# puts a.nome

puts a.mostra_nome_completo

puts "=============================="

class Pessoa
  def initialize(pessoa_hash = {})
    @nome = pessoa_hash[:nome]
    @idade = pessoa_hash[:idade]
    @sobrenome = pessoa_hash[:sobrenome]
  end

  # def initialize(pessoa_array = [])
  #     @nome = pessoa_array[0]
  #     @idade = pessoa_array[1]
  #     @sobrenome = pessoa_array[2]
  # end

  attr_accessor :nome, :sobrenome, :idade

  def mostra_nome_completo
    # "#{@nome} #{@sobrenome}"
    "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
  end
end


puts Pessoa.new({
  nome: "Marcos",
  sobrenome: "Damacena",
  idade: 20
}).mostra_nome_completo

# puts Pessoa.new([
#     "Marcos",
#     20,
#     "Damacena"
# ]).mostra_nome_completo

# puts Pessoa.new("Marcos", 20).mostra_nome_completo
# puts Pessoa.new("Marcos").mostra_nome_completo

puts "=============================="

class Pessoa
  def initialize(pessoa_hash = {})
  @nome = pessoa_hash[:nome]
  @idade = pessoa_hash[:idade]
  @sobrenome = pessoa_hash[:sobrenome]
end

  attr_accessor :nome, :sobrenome, :idade

  private
  def mostra_nome_completo_private
    "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
  end

  public
  def mostra_nome_completo
    self.mostra_nome_completo_private
  end
end

p = Pessoa.new({
  nome: "Marcos",
  sobrenome: "Damacena",
  idade: 20
})

puts p.nome
puts p.mostra_nome_completo

puts "=============================="

class Pessoa
  def initialize(pessoa_hash = {})
    @nome = pessoa_hash[:nome]
    @idade = pessoa_hash[:idade]
    @sobrenome = pessoa_hash[:sobrenome]
  end

  attr_accessor :nome, :sobrenome, :idade

  private
  def mostra_nome_completo_private
    "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
  end

  public
  def mostra_nome_completo
    self.mostra_nome_completo_private
  end

  def outro
    self.mostra_nome_completo
  end

  def para_sobrescrever(*nome)
    "com o dado da classe base"
  end

  protected
  def mostra_nome_completo_protegido
    "acessando metodo protegido"
  end
end

class Joao < Pessoa
  def initialize(nome, sobrenome, idade)
    @nome = nome
    @sobrenome = sobrenome
    @idade = idade
  end

  def o_que_a_pessoa_faz
      x = self.mostra_nome_completo_protegido
      "A pessoa #{self.nome} anda! x: #{x}"
  end

  def para_sobrescrever(*nome)
      "#{super} - Mudei o comportamento com nome - #{nome.inspect}"
  end
end

# require 'byebug'
# debugger

# p = Joao.new({
#     nome: "João",
#     sobrenome: "Damacena",
#     idade: 30
# })
p = Joao.new("João","Damacena",20)
puts p.o_que_a_pessoa_faz
puts p.para_sobrescrever("Wagner", "Bruno", "Lena")
# puts p.nome
# puts p.mostra_nome_completo
# puts p.outro
# puts p.mostra_nome_completo_protegido
# puts p.mostra_nome_completo_private

puts "=============================="
