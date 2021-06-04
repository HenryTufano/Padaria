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
    
while x != "10":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfuncionario() 
    of "2": cadCliente() 
    of "3": cadProduto() 
    of "4": cadfornecedor() 
    of "5": 
        for linha in lis5tEstoque():
            echo fmt"Id do produto: {linha[0]}"
            echo fmt"Nome do Produto: {linha[1]}"
            echo fmt"Nome do fornecedor: {linha[2]}"
    of "6": echo listFuncionario()
    of "7": 
        for linha in listClientes():
            echo fmt"Nome do Cliente: {linha[1]}"
            echo fmt"Nome do CPF: {linha[2]}"
            echo fmt"Nome do EMAIL: {linha[3]}"
            echo fmt"Nome do TELEFONE: {linha[4]}"
            linha()
    of "8": echo listEstoque()
    of "9": echo listFornecedores()
    of "10": 
        echo "Obrigado por utilizar o nosso sistema"
        break
    else: echo "Opção inválida!, tente novamente"