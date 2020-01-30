class ContaCorrente #Suite
    attr_accessor :saldo
       
    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)
        self.saldo -= valor
    end 
end
    describe 'ContaCorrente' do
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00) #@ faz virar variavel de instancia _ fica didponivel durante toda execucao do contexto, se nao colocasse o @ ela nao seria visivel no teste "it alal" 
                @conta.saca(200.00)
            end 
            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end    
    end    
end