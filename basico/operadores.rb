numero1 = 0
numero2 = 0
total = 0

puts 'informe o numero 1'
numero1 = gets.chomp.to_i #.to_i -> converte para inteiro

puts 'infomre o numero 2'
numero2 = gets.chomp.to_i

#adicao
total = numero1 + numero2
puts total

#subtracao
total = numero1 - numero2
puts total

#divisao
total = numero1 / numero2
puts total

#multiplicacao
total = numero1 * numero2
puts total

#Operadores de comparacao

v1 = 11
v2 = 12

puts v1 > v2
puts v1 >= v2
puts v1 < v2
puts v1 <= v2
puts v1 == v2
puts v1 != v2 #diferente
puts v1.eql?(v2) #igual