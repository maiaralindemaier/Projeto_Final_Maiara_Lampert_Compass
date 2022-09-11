#language: pt

Funcionalidade: Página do Produto
 SENDO um usuário do site
 QUERO poder personalizar os produtos que irei comprar na pagina de produtos
 PARA ter uma melhor experiência de compra 

Contexto: Estar na pagina de um produto
  Dado que esteja na home
  Quando realizar busca por um produto existente 
  E acessar a página do produto
  
Cenário: Aumentar quantidade de produto na PDP
  Quando aumentar a quantidade do produto
  Então deverá alterar a quantidade exibida na PDP

Cenário: Aumentar a quantidade de profuto na PDP aumenta no carrinho
  Quando aumentar aquantidade do produto
  E adicionar o produto ao carrinho
  Então o produto deverá ser adicionado ao carinho com a quantidade aumentada

Cenário: Adicionar produto ao carrinho pela PDP
  Quando adicionar o produto ao carinho
  Então o produto deverá ser adicionado ao carrinho com sucesso