class AvengerHeadQaurter

    attr_accessor :list #lista de vingadores
    
    def initialize
        self.list = []
    end    

    def put(avenger)
        self.list.class #verificar a classe -> deu erro pq ta um tipo nill, faltava inicializar o array
        self.list.push(avenger) #adiciona um vingador na lista
    end    

end
#TDD
describe AvengerHeadQaurter do

    it 'deve adicionar um vingador' do
    
        hq = AvengerHeadQaurter.new
        hq.put('Spiderman')

        expect(hq.list).to eql ['Spiderman']

    end



    it 'deve adicionar uma  lista de  vingadores' do
    
        hq = AvengerHeadQaurter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
              
        res = hq.list.size > 0
        expect(hq.list.size).to be > 0 #verifica se de fato esse item é uma slista
        expect(res).to be true

    end

    it 'thor deve ser o primeiro da lista' do
        
        hq = AvengerHeadQaurter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
              
        expect(hq.list).to include 'Thor' #verifica se foi incluido Thor na lista

        res = hq.list.size > 0 

        expect(hq.list).to sart_with('Thor')

    end

    it 'Ironman deve ser ultimo da lista' do
        
        hq = AvengerHeadQaurter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spidermain')
        hq.put('Ironman')
              
        res = hq.list.size > o
          expect(hq.list).to end_with('Ironman')

    end

    it 'deve conter o sobrenome'

        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/) #expressao regular pra verificar se contem o texto entre //
        expect(avenger).not_to match(/maira/) #expressao regular pra verificar se não contem o texto entre //
    end
end