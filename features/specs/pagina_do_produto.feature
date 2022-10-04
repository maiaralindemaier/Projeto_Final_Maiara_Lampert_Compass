#language: pt

Funcionalidade: Página do produto
COMO usuário do site Server Rest
QUERO poder personalizar os produtos que irei comprar na página do produto
PARA ter uma melhor experiência de compra

Contexto: Estar na página de um  produto
 Dado que esteja na home  
 Quando realizar uma busca por um produto existente
 E acessar a página do produto  

@quantify_product
Cenário: aumentar a quatidade do produto na PDP
Quando aumentar a quantidade de produto 
Então deverá alterar a quantidade exibida na PDP

@PDP_inexistente
Cenário: 

