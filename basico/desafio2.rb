# Lê as entradas
capacidade_atual, aumento_percentual = gets.chomp.split.map(&:to_f)

# TODO: Calcule a nova capacidade do disco de Mithril
nova_capacidade = capacidade_atual * ((aumento_percentual / 100) + 1)

# TODO: Imprima a nova capacidade
puts "Nova capacidade #{'%.2f' % nova_capacidade} teraflops"
