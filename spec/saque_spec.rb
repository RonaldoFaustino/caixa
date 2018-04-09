#require serve para buscar um arquivo em outra pasta
# Funcionalidade : Saque no caixa eletronico
# Sendo um cliente correntista do banco
# Posso sacar dinheiro em caixas eletronicos
# Para que eu possa comprar em estabelecimento que não cartão

require_relative 'C:/qaninja/cucumber/caixa/app/conta.rb'


describe('Saque') do

    it('Saque do caixa') do
    
        conta = Conta.new('Fernando')
        
        conta.saldo = 500
        conta.saque(100)

        expect(conta.mensagem).to eql "Saque com sucesso. Aguarda a contagem das notas!"
        expect(conta.saldo).to eql 400        

    end

    it('Valor superior ao meu saldo') do
        conta = Conta.new('Joao')
        conta.saldo = 100

        conta.saque(200)

        #Saldo insuficiente
        expect(conta.mensagem).to eql "Saldo insuficiente"
        expect(conta.saldo). to eql 100 
    end
    
    it('Limite diário') do
        conta = Conta.new('Ricardo')
        conta.saldo = 1000

        conta.saque(701)
       
        expect(conta.mensagem).to eql "Valor maximo para saque diario é de R$ 700"
        expect(conta.saldo). to eql 1000 
    end


end

#113