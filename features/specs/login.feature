# language: pt

Funcionalidade:Login/cadastro
#cadastro válido
Contexto: Carregar a página
  Dado que esteja na home 

Cenário: Carregar a página login/cadastro
  Então deverá carregar a página de login
  E faça login com "joao@gmail.com" e "senha1995"
  Então deverá apresentar "Serverest Store" na área logada

  
