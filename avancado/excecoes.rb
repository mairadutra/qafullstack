

# begin
#     #Devo tentar fazer alguma coisa
#     file = File.open('./ola.txt') #pra pegar a pasta raiz
#     if file
#             puts file.read
#     end
# rescue Exception => e  # e recebe o "resgate" do q ta acontecendo
#     #obter um possível erro
#     puts e.message # como o arquivo não tinha extensão .txt, daria erro de nao encontrar o arquivo
#     outs e.backtrace #imprime a trilha de execução até o erro
# end

def soma(n1, n2)

    n1 + n2

rescue Exception => e

    puts 'erro ao executar a soma'
end

soma('10', 5)