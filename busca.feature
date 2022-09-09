# language: pt

Funcionalidade: Busca
  COMO um usuário do site O BOTICÁRIO
  QUERO poder buscar por diferentes produtos
  PARA poder adicionar e personalizar minhas compras

  Contexto: estar na home 
    Dado que esteja na home 

  Cenário: Buscar por  um produto existente
    Quando realizar uma busca por um produto existente
    Então devarão ser retornados resultados na busca

  Esquema do Cenário: Buscar por produtos existentes
    Quando buscar pelo produto "<produto>"
    Então deverão ser retornados resultados na busca
    
    Exemplos:
    | produto   |
    |Perfumes   |
    |Maquiagens |
    |Kits       |
