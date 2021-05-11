import objs
import createcardb
import strutils
import strformat
import db_postgres

var 
  cli:seq[Cliente]
  forn:seq[Fornecedores]
  pro:seq[Produto]
  

proc linha() =
  echo "==========================================================================="

proc menu*() =
  echo """
  Padaria do portuga Padeiro
  [1] - CADASTRAR FUNCIONARIO
  [2] - CADASTRAR CLIENTE
  [3] - LISTAR
  [4] - SAIR
	"""
  linha()

  linha()

proc subMenu*()= 
  linha()
  echo """
    ADMIN - SUBMENU
    [1] - LISTAR CarroES
    [2] - LISTAR CLIENTES
    [3] - LISTAR PRODUTOS
    [4] - VOLTAR AO MENU ANTERIOR"""
      # submenu
  linha()

proc cadCliente*() = 
  var cli = Cliente()
  echo "Bem vindo ao Cadastro de Cliente" 
  echo "Digite o nome"
  cli.nome=readline(stdin)

  echo "Digite o cpf"
  cli.cpf=readline(stdin)

  echo "Digite o endereço do cli"
  cli.endereco=readline(stdin)

  echo "Digite o email do cli"
  cli.email=readline(stdin)

  echo "Digite telefone do cli"
  cli.telefone=readline(stdin)

  linha()

  

proc cadfornecedor*() = 
  var forn = Fornecedor()
  echo "Bem vindo ao Cadastro do fornecedor"
  echo "Digite o nome do fornecedor"
  forn.nome=readline(stdin)

  echo "Digite o endereço do cliente"
  forn.cnpj=readline(stdin)

  echo "Digite o endereço do cliente"
  forn.telefone=parseInt(readline(stdin))

  echo "Digite o email do cliente"
  forn.email=readline(stdin)
  
  linha()

proc cadProduto*() = 
  var pro = Produto()
  echo "Bem vindo ao Cadastro produto" 
  echo "Digite o nome"
  pro.nome=readline(stdin)

  echo "Digite o valor"
  pro.valor=parseFloat(readline(stdin))

  echo "Digite a data de validade"
  pro.data=readline(stdin)

  echo "Digite o fornecedor"
  pro.idfornecedor=parseInt(readline(stdin))

  linha()

proc listaprodutos*() = 
  linha()
  
  linha()

proc listausuarios*() =
  linha()
  
  linha()
