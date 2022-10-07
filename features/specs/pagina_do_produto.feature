#language: pt

Funcionalidade: Página do produto
COMO usuário do site Server Rest
QUERO poder personalizar os produtos que irei comprar na página do produto
PARA ter uma melhor experiência de compra

Contexto: Estar na página de um  produto
 Dado que esteja na home  
 Quando realizar uma busca por um produto existente
 E acessar a página do produto  

@adc_a_lista
Cenário: adicionar produto a lista de compras
Quando adicionar um produto a lista de compras 
Então o produto deverá ser adicionado a lista de compras