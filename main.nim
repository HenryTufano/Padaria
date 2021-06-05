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
var tag =""
var quanti=""
while x != "10":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadfuncionario() 
    of "2": cadCliente() 
    of "3": cadProduto() 
    of "4": cadfornecedor() 
    of "5": 
        for linha in listEstoque():
            echo fmt"Id do produto: {linha[0]}"
            echo fmt"Nome do produto: {linha[1]}"
            echo fmt"A valor: {linha[3]}"
            echo fmt"A quantidade: {linha[4]}"
            linha()
        tproduto()

        
    of "6": 
        for linha in listFuncionario():
            echo fmt"Nome do funcionario: {linha[1]}"
            echo fmt"A cpf : {linha[2]}"
            echo fmt"A telefone:: {linha[3]}"
            echo fmt"A quantidade {linha[4]}"
            echo fmt"O usuario é adm [1] SIM [2]: {linha[5]}"
            linha()
    of "7": 
        for linha in listClientes():
            echo fmt"Nome do Cliente: {linha[1]}"
            echo fmt"Nome do CPF: {linha[2]}"
            echo fmt"Nome do EMAIL: {linha[3]}"
            echo fmt"Nome do TELEFONE: {linha[4]}"
            linha()
    of "8": 
        for linha in listEstoque():
            echo fmt"Nome do Produto: {linha[1]}"
            echo fmt"Id do fornecedor: {linha[2]}"
            echo fmt"Valor: {linha[3]}"
            echo fmt"Quantidade: {linha[4]}"
            linha()
    of "9": 
        for linha in listFornecedores():
            echo fmt"Nome do fornecedor: {linha[1]}"
            echo fmt"O CNPJ do fornecedor é: {linha[2]}"
            echo fmt"Telefone: {linha[3]}"
            echo fmt"email: {linha[4]}"
            linha()
    of "10": 
        echo "Obrigado por utilizar o nosso sistema"
        break
    else: echo "Opção inválida!, tente novamente"