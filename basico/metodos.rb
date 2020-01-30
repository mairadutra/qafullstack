def diga_ola

    puts 'ola'  #ruby opta por retornar a ultima instrucao do metodo, ainda que nao se use return
end

def retorna_nome
    puts 'maira'
end

#metodos com argumentos
def soma (v1,v2)
    total = v1 + v2
    total #retorna a variavel total
end    

def diga_ola2(nome)
    puts 'Ola ' + nome
end


diga_ola #chama o metodo
resultado = retorna_nome
puts resultado

res = soma(23, 67)
puts res

diga_ola2('maiara')
#atalho para comentar ctrl + ;

