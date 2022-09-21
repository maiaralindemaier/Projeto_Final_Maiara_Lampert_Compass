#language: pt

@search
Funcionalidade: Busca
COMO usuário do site Server Rest
QUERO poder buscar por diferentes produtos
PARA poder personalizar minhas compras 

Contexto: Estar na home
  Dado que esteja na home

@busca_por_produto_existente
Cenário: Buscar por um produto existente
  Quando realizar uma buscar por um produto existente 
  Então deverão ser retornados resultados na busca 

Esquema do Cenário:Buscar por produtos existentes
  Quando buscar pelo produto '<produto>'  
  Então deverão ser retornados resultados na busca

Exemplos:
|produtos                        |
|Mesa para Computador MX Vertical|
|Mary Murray                     |
|Samsung 60 polegadas            |
|Walton Thompson                 |
