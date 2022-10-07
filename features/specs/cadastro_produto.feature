# language: pt
@cadastrar_produtos
Funcionalidade: Cadastrar produto
    Como administrador do ServeRest
    Quero realizar o cadastro de um produto

@login_adm
Cenário: Realiza o login
  Quando faço login como adm
   Dado que esteja na tela de Cadastro de produtos

@cadastro_produto
Cenário: cadastrar produto valido
    Quando inserir os dados do produto valido <nome>, <preco>, <descricao>, <quantity>
    Então o produto será cadastrado
    Exemplos:
    | nome                      | preco                   | descricao                     | quantity                 |
    | "nome_product"            | "preco_product"         | "description_product"         | "quantity_product"       |        

@cadastro_produto_error
Cenário: cadastro produto com erro
    Quando inserir os dados do produto invalidos <nome>, <preco>, <descricao>, <quantity>
    Então o usuário devera receber uma mensagem de erro <msg>
    Exemplos:
    | nome                      | preco                   | descricao                     | quantity                    | msg                         |
    | "nome_product_invalid"    | "preco_product"         | "description_product"         | "quantity_product"          |   "Nome é obrigatório"      |
    | "nome_product"            | "preco_product_invalid" | "description_product"         | "quantity_product"          |   "Preco é obrigatório"     |
    | "nome_product"            | "preco_product"         | "description_product_invalid" | "quantity_product"          |   "Descricao é obrigatório" |
    | "nome_product"            | "preco_product"         | "description_product"         | "quantity_product_invalid"  |   "Quantidade é obrigatório"|