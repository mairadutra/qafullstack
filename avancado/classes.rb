

class Conta

    atrr_accessor :saldo, :nome

    
    def initialize (nome) #metodo construtor - > invocado toda vez que se faz .new
        self.saldo  = 0.0
        self.nome = nome
    end
   
    def deposita(valor)
        
        self.saldo += valor  #self involca um atributo ou metodo dentro da própria classe  -> como se fosse o this
        #puts 'Depositando a quantia de ' + valor.to_s + 'reais'
        puts "Depsositando a contia de #{valor} reais na conta de #{self.nome} " #interpolação de string -> jeito mais elegante: não necessita de convesão, é feito automaticamente
    end

end

c = Contoa.new('Maira')

c.deposita(100.00) 
puts c.saldo


c.deposita(10.00)
puts c.saldo
puts c.nome