#language: pt

@search
Funcionalidade: Busca
COMO usuário do site Server Rest
QUERO poder buscar por diferentes produtos
PARA poder personalizar minhas compras 

Contexto: Estar na home interna
  Dado que esteja na home interna

Cenário: Realiza o login
  Quando faço login com "joao@gmail.com" e "senha1995"
  Então deverá apresentar "Serverest Store" na área logada
  
@busca_por_produto_existente
Esquema do Cenário:Buscar por produtos existentes
  Quando buscar pelo produto '<produtos>'  
  Então deverão ser retornados resultados na busca

Exemplos:
|produtos                        |
|Mesa para Computador MX Vertical|
|Mary Murray                     |
|Samsung 60 polegadas            |
|Walton Thompson                 |
