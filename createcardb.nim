# import db_postgres

# let db=open("localhost","rique","12345","padaria")
# db.exec(sql"DROP TABLE IF EXISTS funcionarios")
# db.exec(sql"""CREATE TABLE funcionarios(
#         id SERIAL PRIMARY KEY,
#         nome VARCHAR(50) NOT NULL,
#         cpf VARCHAR(14) NOT NULL,
#         telefone INTEGER NOT NULL,
#         email VARCHAR(80) NOT NULL,
#         adm VARCHAR(80) NOT NULL)""")

# db.exec(sql"DROP TABLE IF EXISTS clientes")
# db.exec(sql"""CREATE TABLE clientes(
#         id SERIAL PRIMARY KEY,
#         nome VARCHAR(50) NOT NULL,
#         cpf VARCHAR(14) NOT NULL,
#         telefone INTEGER NOT NULL,
#         email VARCHAR(80) NOT NULL)""")

# db.exec(sql"DROP TABLE IF EXISTS fornecedores")
# db.exec(sql"""CREATE TABLE fornecedores(
#         id SERIAL PRIMARY KEY,
#         nome VARCHAR(50) NOT NULL,
#         cnpj VARCHAR(18) NOT NULL,
#         telefone INTEGER NOT NULL,
#         email VARCHAR(80) NOT NULL)""")

# db.exec(sql"DROP TABLE IF EXISTS estoque")
# db.exec(sql"""CREATE TABLE estoque(
#         id SERIAL PRIMARY KEY,
#         nome_produto VARCHAR(50) NOT NULL,
#         idFornecedores INTEGER REFERENCES fornecedores(id) NOT NULL,
#         valor FLOAT NOT NULL,
#         quant INTEGER NOT NULL)""")


