import utils
import strformat
import strutils
import objs
import sequtils

var cli=new Cliente
var fun=new Funcionario
var forn=new Fornecedor
var pro=new Produto
var x = "9"
    
var y:seq[seq[string]]

y=listClientes()
echo y
while x != "10":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfuncionario() 
    of "2": cadCliente() 
    of "3": cadProduto() 
    of "4": cadfornecedor() 
    # of "5": 
    of "6": echo listFuncionario()
    of "7": echo listClientes()
    of "8": echo listEstoque()
    of "9": echo listFornecedores()
    of "10": 
        echo "Obrigado por utilizar o nosso sistema"
            break
    else: echo "Opção inválida!, tente novamente"