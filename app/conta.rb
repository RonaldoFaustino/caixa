


class Conta
    attr_accessor :nome, :saldo, :mensagem

    def initialize(nome)
        @nome = nome
    end

    def saque(valor)
        if valor > @saldo
            @mensagem = "Saldo insuficiente"
        elsif valor > 700
            @mensagem = "Valor maximo para saque diario é de R$ 700"
        else
         @mensagem = "Saque com sucesso. Aguarda a contagem das notas!"
         @saldo = @saldo - valor
        end
    end 
    
    
end

