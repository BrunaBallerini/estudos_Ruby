require "byebug"

for i in 0..4 do
  puts i
end
puts "=============================="
count = 0
until count == 5 do
  puts count
  count += 1
end
puts "=============================="
valor = 5
valor.times do |i|
  puts i
end
puts "=============================="
5.times {|i| puts i}
puts "=============================="
[0, 1, 2, 3].each { |num| puts num }
puts "=============================="
[{nome: "valor1"}, {nome: "valor2"}].each do |item|
  item.each do |key, value|
    puts key
    puts value
  end
end
puts "=============================="
1.upto(5) { |i| puts i }
puts "=============================="
5.downto(1) { |i| puts i }
puts "=============================="
for i in 0..5 do
  puts "i: #{i}"
  if i == 3
    puts "Repetindo a iteração para i: #{i}"
    # debugger
    i += 1
    redo
  end
end
puts "=============================="
begin
  # 1 / 0
  # 1 + "d"
  1 + 1
rescue ZeroDivisionError
  puts "Erro: Divisão por zero."
rescue TypeError
  puts "Erro: String não pode ser somada à inteiro."
rescue Exception => e
  puts e
else
  puts "Nenhuma exceção."
ensure
  puts "Sempre passa no ensure."
end
puts "=============================="
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

person = Person.new("Alice", 30)
puts person.inspect
puts "=============================="
arr = [
  {nome: "bruna", idade: 36},
  {nome: "marcelo", idade: 36},
  {nome: "maria", idade: 27},
]
arr.find do |x|
  if x[:nome] == "bruna"
    puts x
  end
end
puts arr.find { |x| x[:nome] == "bruna" }.inspect
puts arr.find { |x| x[:nome].include? "marcelo" }.inspect
puts arr.select { |x| x[:nome].downcase.include? "a" }.inspect
puts "=============================="
