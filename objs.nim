import utils

type
  Produto* = ref object of RootObj  
    nome*:string
    idfornecedor*:int
    valor*:float
    quant*:int

    
  Fornecedor* = ref object of RootObj
    nome*:string 
    cnpj*:string
    telefone*:int   
    email*:string
    

  Funcionario* = ref object of RootObj
    nome*:string
    cpf*:string
    endereco*:string
    email*:string
    telefone*:int
    adm*:string
  
  Cliente* = ref object of RootObj
    nome*:string
    cpf*:string
    endereco*:string
    email*:string
    telefone*:int