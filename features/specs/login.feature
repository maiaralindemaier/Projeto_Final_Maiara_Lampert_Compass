# language: pt

Funcionalidade:Login/cadastro
Como usuário do site Server Rest
QUERO realizar login
PARA ter acesso ao site

Contexto: Carregar a página
  Dado que esteja na home 

@login_error
Cenário: Carregar a página login com erro
  Então deverá carregar a página de login
  E faça login com "joao@gmail.com" e "senha"
  Então deverá apresentar mensagem de erro "Email e/ou senha inválidos"
  
@login_sucess
Cenário: Carregar a página login
  Então deverá carregar a página de login
  E faça login com "joao@gmail.com" e "senha1995"
  Então deverá apresentar "Serverest Store" na área logada



#cucumber -t @login_sucess
#cucumber -t @login_error
