# language: pt

@login
Funcionalidade:Login/cadastro
Como usuário do site Server Rest
QUERO realizar login
PARA ter acesso ao site

Contexto: Carregar a página
  Dado que esteja na home 

@login_error
Cenário: Carregar a página login com erro
  Então deverá carregar a página de login
  E faça login com dados invalidos
  Então deverá apresentar mensagem de erro <msg>  
   Exemplos:
   | email            | senha               | msg                                 |
   | "joao@gmail.com" | "senha"             | "Email é obrigatório"               |
    
@login_sucess
Cenário: Carregar a página login
  Então deverá carregar a página de login
  E faça login com dados validos
  Então deverá apresentar <texto> na área logada
   Exemplos:
   | email            | senha               | texto                             |
   | "joao@gmail.com" | "senha1995"         | "Serverest Store"                 |


#cucumber -t @login_sucess
#cucumber -t @login_error
