import utils
import strformat
import strutils
var x = "1"
while x != "5":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfornecedor()
    of "2": echo "teste 2"
    of "3": echo "teste 3"
    of "4": echo "teste 4"
    of "5": echo "Até a próxima"
    else: echo "Opção inválida!, tente novamente"