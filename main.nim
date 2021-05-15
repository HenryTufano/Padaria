import utils
import strformat
import strutils
var x = "9"
while x != "10":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfuncionario()
    of "2": cadCliente()
    of "3": cadProduto()
    of "4": cadfornecedor()
    of "5": 
    of "6": 
    of "7": 
    of "8":
    of "9": 
    of "10": 
        echo "Obrigado por utilizar o nosso sistema"
        break
    else: echo "Opção inválida!, tente novamente"