# language: pt

Funcionalidade:Login/cadastro

Cenário: Carregar a página login/cadastro
  Dado que esteja na home 
  Então deverá carregar a página de login
  E eu faço login com "joao@gmail.com" e "senha1995"
  Então devo ver "Serverest Store" na área logada
