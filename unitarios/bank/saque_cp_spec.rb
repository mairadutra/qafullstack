

require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do
        
        context 'quando o valor é positivo' do
        
            before (:all) do
                
               @cp = ContaPoupanca.new(1000.00)
               @cp.saca(200.00)

            end
            it  'entao atualiza saldo' do
                expect(@cp.saldo).to eql 798.00              
            end
        end

        context  'quando o saldo é zero' do
        
            before (:all) do
                
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
 
             end
             it  'então exibe mensagem' do

                 expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
             end

             it 'e o saldo final com zeros' do 
                expect(@cp.saldo).to eql 0.00     
             end 
            
        end
        
       
        context  'quando o saldo é insuficente' do
        
            before (:all) do
                
                @conta = ContaPoupanca.new(100.00)
                @conta.saca(101.00)
 
             end
             it  'então exibe mensagem' do

                 expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
             end

             it 'e o saldo permanece' do 
                expect(@conta.saldo).to eql 100.00     
             end   

        end

        context 'quando supera o limite de saque'
            before (:all) do
                
                @conta = ContaPoupanca.new(1000.00)
                @conta.saca(701.00)
 
             end
             it  'então exibe mensagem' do

                expect(@conta.mensagem).to eql 'Limite máximo por saque é R$ 700'
            end
            
            it 'e o saldo permanece' do 
                expect(@conta.saldo).to eql 1000.00     
             end 
        
        end
        

    end


end
