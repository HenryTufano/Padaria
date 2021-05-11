import utils

type
  Produto* = ref object of RootObj  
    nome*:string
    valor*:float
    data*:string 
    idfornecedor*:string

    
  Fornecedor* = ref object of RootObj
    nome*:string 
    cnpj*:string
    telefone*:int   
    email*:string

  Funcionario* = ref object of RootObj
    nome*:string
    endereco*:string
    email*:string
    telefone*:int
    adm*:bool
  
  Cliente* = ref object of RootObj
    nome*:string
    cpf*:string
    endereco*:string
    email*:string
    telefone*:int