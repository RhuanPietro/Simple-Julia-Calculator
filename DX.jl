module DX

function operador()
    println("\x1b[38;5;46mDigite um número\x1b[0m")

    num1 = nothing
    try
        num1 = parse(Float64, readline())
    catch
        println("Entrada inválida. Por favor, digite um número.")
        operador()
        return
    end

    println("\x1b[38;5;46mDigite um segundo número\x1b[0m")

    num2 = nothing
    try
        num2 = parse(Float64, readline())
    catch
        println("Entrada inválida. Por favor, digite um número.")
        operador()
        return
    end

    intro(num1, num2)
end


function intro(num1, num2)
    println("\u001b[34mBem vindo a calculadora:\u001b[0m")
    println("\x1b[38;5;49mSelecione uma opção abaixo\x1b[0m")
    println("1. \x1b[38;5;78mDivisão\x1b[0m")
    println("2. \x1b[38;5;78mMultiplicação\x1b[0m")
    println("3. \x1b[38;5;78mSubtração\x1b[0m")
    println("4. \x1b[38;5;78mAdição\x1b[0m")
    controle(num1, num2)

end 

function controle(num1, num2)
    opcao = chomp(readline())
    if opcao == "1" || opcao == "Divisão" || opcao == "divisao" 
        dividir_numeros(num1,num2)
        resultado_dividir = dividir_numeros(num1,num2)
        println("O resultado é $resultado_dividir")
        final()
    elseif opcao == "2" || opcao == "Multiplicação" || opcao == "multipicação" || opcao == "multiplicacao" || opcao == "multiplicacao"
        vezes_numeros(num1,num2)
        resultado_vezes = vezes_numeros(num1,num2)
        println("O resultado é $resultado_vezes")
        final()
    elseif opcao == "3" || opcao == "Subtração" || opcao == "Subtracao" || opcao == "subtração" || opcao == "subtracao"
        menos_numeros(num1,num2)
        resultado_menos = menos_numeros(num1,num2)
        println("O resultado é $resultado_menos")
        final()
    elseif opcao == "4" || opcao =="Adição" || opcao == "Adicao" || opcao == "adição" || opcao == "adicao"
        soma_numeros(num1, num2)
        resultado_soma = soma_numeros(num1, num2)
        println("O resultado é $resultado_soma")
        final()
    else 
        println("Resposta Invalida")
        controle(num1,num2)
    end    
    
end

function soma_numeros(num1, num2)
    resultado = num1 + num2
    return resultado
end

function menos_numeros(num1, num2)
    resultado = num1 - num2
    return resultado

end

function vezes_numeros(num1,num2)
    resultado = num1 * num2
    return resultado
end

function dividir_numeros(num1,num2)
    resultado = num1 / num2
    return resultado
end

    function final()
        println("Você quer fazer mais alguma operação?")
        println("Sim")
        println("Não")
        opcao2 = lowercase(readline())
        if opcao2 == "sim" 
            operador()
        elseif opcao2 == "não" || opcao2 == "nao"
            sleep(1)
            println("Obrigado por ter utilizado")
        else 
            println("Opção Inválida")
            final()
        end
    end

operador()
    
end