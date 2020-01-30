#Ruby é uma linguagem considerada puramente orientada a objetos
#Porque noo Ruby tudo são objetos

#Classe possui atributos e métodos
#Caracteristicas (atributos) e ações (métodos)

#Carro (Nome, Marca, Modelo, Cor, QUanditade de portas, etc...) -> atributos
#Ligar, Buzinar, Parar, etc ... -> métodos

class Carro

    attr_accessor:Nome


    def ligar 
        puts 'O carro está pronto para iniciar o trajeto'
    end
end
    civic = Carro.new
    civic.Nome = 'Civic'
    puts civic.class

    civic.ligar
    puts civic.Nome
