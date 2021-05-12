import utils
import strformat
import strutils
var x = "9"
while x != "4":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfornecedor()
    of "2": cadCliente()
    of "3": subMenu()
    of "4": echo "Obrigado por utilizar o nosso sistema"
    else: echo "Opção inválida!, tente novamente"