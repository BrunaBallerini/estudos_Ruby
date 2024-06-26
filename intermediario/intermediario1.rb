# class Pessoa
#   attr_accessor :nome, :sobrenome

#   # setter
#   # def nome=(value)
#   #     @nome = value
#   # end

#   # getter
#   # def nome
#   #     @nome
#   # end

#   def mostra_nome_completo
#     "#{@nome} #{@sobrenome}"
#   end
# end

# a = Pessoa.new
# a.nome = "Marcos"
# a.sobrenome = "Lemon"
# # puts a.inspect
# # puts a.nome

# puts a.mostra_nome_completo
# puts "=============================="

# class Pessoa
#   def initialize(pessoa_hash = {})
#     @nome = pessoa_hash[:nome]
#     @idade = pessoa_hash[:idade]
#     @sobrenome = pessoa_hash[:sobrenome]
#   end

#   # def initialize(pessoa_array = [])
#   #     @nome = pessoa_array[0]
#   #     @idade = pessoa_array[1]
#   #     @sobrenome = pessoa_array[2]
#   # end

#   attr_accessor :nome, :sobrenome, :idade

#   def mostra_nome_completo
#     # "#{@nome} #{@sobrenome}"
#     "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
#   end
# end


# puts Pessoa.new({
#   nome: "Marcos",
#   sobrenome: "Damacena",
#   idade: 20
# }).mostra_nome_completo

# # puts Pessoa.new([
# #     "Marcos",
# #     20,
# #     "Damacena"
# # ]).mostra_nome_completo

# # puts Pessoa.new("Marcos", 20).mostra_nome_completo
# # puts Pessoa.new("Marcos").mostra_nome_completo
# puts "=============================="

# class Pessoa
#   def initialize(pessoa_hash = {})
#   @nome = pessoa_hash[:nome]
#   @idade = pessoa_hash[:idade]
#   @sobrenome = pessoa_hash[:sobrenome]
# end

#   attr_accessor :nome, :sobrenome, :idade

#   private
#   def mostra_nome_completo_private
#     "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
#   end

#   public
#   def mostra_nome_completo
#     self.mostra_nome_completo_private
#   end
# end

# p = Pessoa.new({
#   nome: "Marcos",
#   sobrenome: "Damacena",
#   idade: 20
# })

# puts p.nome
# puts p.mostra_nome_completo

# puts "=============================="

# class Pessoa
#   def initialize(pessoa_hash = {})
#     @nome = pessoa_hash[:nome]
#     @idade = pessoa_hash[:idade]
#     @sobrenome = pessoa_hash[:sobrenome]
#   end

#   attr_accessor :nome, :sobrenome, :idade

#   private
#   def mostra_nome_completo_private
#     "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
#   end

#   public
#   def mostra_nome_completo
#     self.mostra_nome_completo_private
#   end

#   def outro
#     self.mostra_nome_completo
#   end

#   def para_sobrescrever(*nome)
#     "com o dado da classe base"
#   end

#   protected
#   def mostra_nome_completo_protegido
#     "acessando metodo protegido"
#   end
# end

# class Joao < Pessoa
#   def initialize(nome, sobrenome, idade)
#     @nome = nome
#     @sobrenome = sobrenome
#     @idade = idade
#   end

#   def o_que_a_pessoa_faz
#       x = self.mostra_nome_completo_protegido
#       "A pessoa #{self.nome} anda! x: #{x}"
#   end

#   def para_sobrescrever(*nome)
#       "#{super} - Mudei o comportamento com nome - #{nome.inspect}"
#   end
# end

# # require 'byebug'
# # debugger

# # p = Joao.new({
# #     nome: "João",
# #     sobrenome: "Damacena",
# #     idade: 30
# # })
# p = Joao.new("João","Damacena",20)
# puts p.o_que_a_pessoa_faz
# puts p.para_sobrescrever("Wagner", "Bruno", "Lena")
# # puts p.nome
# # puts p.mostra_nome_completo
# # puts p.outro
# # puts p.mostra_nome_completo_protegido
# # puts p.mostra_nome_completo_private
# puts "=============================="

# class Carro
#   attr_accessor :id, :nome, :descricao

#   def andar
#       puts "O carro #{nome} está andando!"
#   end

#   def nome_preenchido?
#     return self.nome != '' && self.nome != nil
#   end

#   def nome_maiusculo
#     return self.nome.upcase if self.nome_preenchido?
#     return nil
#   end

#   def nome_maiusculo!
#     self.nome = self.nome.upcase if self.nome_preenchido?
#     return self.nome
#   end
# end

# a = Carro.new
# a.andar
# puts a.nome_preenchido?
# a.nome = "Sportage"
# puts a.nome_preenchido?
# puts a.nome
# a.nome_maiusculo!
# puts a.nome
# puts "=============================="

# class Carro
#   attr_accessor :id, :nome, :descricao

#   def andar
#     puts "INSTANCIA: O carro #{nome} está andando #{self}."
#   end

#   def self.andar
#     puts "CLASSE: O carro está andando #{self}."
#   end
# end

# a = Carro.new
# a.nome = "Sportage"
# puts a.andar
# puts Carro.andar
# puts "=============================="

# module VeiculoMetodos
#   def andar
#     raise "Erro: método não implementado"
#   end
# end

# class Carro
#   attr_accessor :id, :nome, :descricao
#   include VeiculoMetodos

#   def andar
#     puts "o carro #{nome} está andando #{self}"
#   end
# end

# puts Carro.new.andar
# puts "=============================="

# class Veiculo # classe abstrata
#   attr_accessor :id, :nome, :descricao

#   def andar
#     raise "Erro: método não implementado"
#   end
# end

# class Carro < Veiculo
#   def initialize(nome)
#     @nome = nome
#   end

#   def andar
#     "O carro #{@nome} está andando"
#   end
# end

# puts Carro.new("Sportage").andar
# puts "=============================="

# # Singleton -> classe que cria uma instancia somente
class Email
  attr_accessor :to, :from, :subject, :body

  def send
    # TODA A IMPLEMTAÇÃO DA GEM DE ENVIO DE EMAIL
    puts "Estou enviando o email para #{to} ... "
  end

  private_class_method :new
  def self.instancia
    @@instancia ||= self.new # equivale a: @@instancia = self.new if @@instancia == nil
    return @@instancia
  end
end

email = Email.instancia
email.to = "teste@teste.com"
email.send
puts email

Email.instancia.to = "testes@teste.com"
Email.instancia.send
puts Email.instancia

# class Pessoa
#   def nome
#     @nome
#   end

#   def nome= (valor)
#     @nome = valor
#   end

#   def idade
#     @idade
#   end

#   def idade= (valor)
#     @idade = valor
#   end

#   def sobrenome
#     @sobrenome
#   end

#   def sobrenome= (valor)
#     @sobrenome = valor
#   end
# end


# pessoa = Pessoa.new
# pessoa.nome = "Mariana"
# puts pessoa.nome

class Pessoa
  def initialize(nome, idade, sobrenome)
    @nome = nome
    @idade = idade
    @sobrenome = sobrenome
  end
end

pessoa = Pessoa.new("João", 30, "Silva")
pessoa.nome = "bastião"
puts pessoa.nome
