import objs
import createcardb
import strutils
import strformat
import db_postgres

var 
  cli:seq[Cliente]
  forn:seq[Fornecedor]
  pro:seq[Produto]
  fun:seq[Funcionario]
  

proc linha() =
  echo "==========================================================================="

proc menu*() =
  echo """
  Padaria do portuga Padeiro
  [1] - CADASTRAR FUNCIONARIO
  [2] - CADASTRAR CLIENTE
  [3] - CADASTRAR PRODUTO
  [4] - CADASTRAR FORNECEDOR
  [5] - REALIZAR UMA VENDA
  [6] - LISTAR FUNCIONARIOS
  [7] - LISTAR CLIENTES
  [8] - LISTAR PRODUTOS
  [9] - LISTAR FORNECEDORES
  [10] - SAIR
	"""
  linha()

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
  cli.telefone=parseInt(readline(stdin))

  insertCliente(cli)

  linha()

proc cadfuncionario*() = 
  var y=""
  var fun = Funcionario()
  echo "Bem vindo ao Cadastro de Funcionario" 
  echo "Digite o nome"
  fun.nome=readline(stdin)

  echo "Digite o cpf"
  fun.cpf=readline(stdin)

  echo "Digite o endereço do cli"
  fun.endereco=readline(stdin)

  echo "Digite o email do cli"
  fun.email=readline(stdin)

  echo "Digite telefone do cli"
  fun.telefone=parseInt(readline(stdin))

  echo "Este funcionario tera permissoes de administrador?\n [1] - SIM\n [2] - NAO"
  y=readline(stdin)
    if y=="1":
      fun.adm=TRUE
    else:
      fun.adm=FALSE
  
      
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
  
  insertFornecedor(forn)
  linha()

proc cadProduto*() = 
  var pro = Produto()
  echo "Bem vindo ao Cadastro produto" 
  echo "Digite o nome"
  pro.nome=readline(stdin)

  echo "Digite o valor"
  pro.valor=parseFloat(readline(stdin))

  echo "Digite o fornecedor"
  pro.idfornecedor=parseInt(readline(stdin))

  echo "Digite o valor"
  pro.valor=parseFloat(readline(stdin))

  echo "Digite a quantidade"
  pro.quant=parseInt(readline(stdin))

  insertEstoque()
  linha()

proc insertCliente*(cli:Cliente) =
    let db = open("localhost","rique","12345","padaria")
    db.exec(sql"""INSERT INTO clientes(nome, cpf , telefone , email )
                VALUES(?,?,?,?)""",cli.nome,cli.cpf,cli.telefone,cli.email)
    db.close()

proc insertFornecedor*(fun:Fornecedor) =
    let db = open("localhost","rique","12345","padaria")
    db.exec(sql"""INSERT INTO fornecedores(nome, cnpj , telefone , email)
                VALUES(?,?,?,?)""",fun.nome,fun.cnpj,fun.endereco,fun.telefone)
    db.close()

proc insertEstoque*(pro:Produto) =
    let db = open("localhost","rique","12345","padaria")
    db.exec(sql"""INSERT INTO estoque(nome_produto, idFornecedores , valor , quant)
                VALUES(?,?,?,?)""",pro.nome_produto,pro.idFornecedor,pro.valor,pro.quant)
    db.close()

proc listClientes*():string = 
    let db = open("localhost","rique","12345","padaria")
    result=db.exec(sql"""SELECT * FROM clientes""")
    db.close()

proc listEstoque*():string = 
    let db = open("localhost","rique","12345","padaria")
    result=db.exec(sql"""SELECT * FROM estoque""")
    db.close()

proc listFuncionario*():string = 
    let db = open("localhost","rique","12345","padaria")
    result=db.exec(sql"""SELECT * FROM funcionarios""")
    db.close()

proc listFornecedores*():string = 
    let db = open("localhost","rique","12345","padaria")
    result=db.exec(sql"""SELECT * FROM fornecedores""")
    db.close()