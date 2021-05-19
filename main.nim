import utils
import strformat
import strutils
var cli=Cliente
var fun=Funcionario
var forn=Fornecedor
var pro=Produto
var x = "9"
while x != "10":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfuncionario() insertFuncionario(fun)
    of "2": cadCliente() insertCliente(cli)
    of "3": cadProduto() insertEstoque(pro)
    of "4": cadfornecedor() insertFornecedor(forn)
    of "5": 
    of "6": 
    of "7": 
    of "8":
    of "9": 
    of "10": 
        echo "Obrigado por utilizar o nosso sistema"
        break
    else: echo "Opção inválida!, tente novamente"