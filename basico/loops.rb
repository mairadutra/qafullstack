#times -> repete o bloco de codigo x vezes

5.times  do
    puts 'repetindo com times'
end

#usando iteracao
5.times  do |i| #array comeca com zero
    puts 'repetindo com times ' + i.to_s + ' vez'
     i
end


#while -> executa um bloco enquanto a condicao for verdadeira
init = 0

while init <= 10 do
    puts 'repetindo com while ' + init.to_s + ' vez'
    init += 1
end

#for => o valor da iteracao fica armazenado em item

for item in (0...10)
    puts 'repetindo com for ' + item.to_s + ' vez'
    item += 1
end

#trabalhando com arrays

vingadores = ['ironman', 'hulk', 'spiderman']
puts vingadores.class #imprime o tipo

vingadores.each do |v| #percorre o array, v é a variavel de iteracao
    puts v #imprime o q tem na posicao v do array
end