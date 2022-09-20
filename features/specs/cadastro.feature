# language: pt

Funcionalidade:Cadastro

Cenário: Realizar cadastro valido
  Dado que esteja na página de cadastro
  Quando eu faço cadastro com "João", "joao@gmail.com" e "senha1995"
  Então deverá realizar cadastro 

Cenário: Realizar cadastro invalido
  Dado que esteja na página de cadastro
  Quando eu faço cadastro com "João", "joao@gmail" e "senha1995"
  E deverá realizar cadastro
  Então deverá realizar apresentar mensagem de erro "Email deve ser um email válido"

Cenário: Campos vazios
  Dado que esteja na página de cadastro
  Quando eu faço cadastro com "", "" e ""
  E deverá realizar cadastro
  Então deverá realizar apresentar mensagens de erro "Nome não pode ficar em branco", "Email não pode ficar em branco" e "Password não pode ficar em branco"