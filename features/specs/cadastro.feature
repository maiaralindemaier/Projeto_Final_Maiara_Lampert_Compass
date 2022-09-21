# language: pt

Funcionalidade:Cadastro
COMO usuario do site Server Rest
QUERO fazer novo cadastro
PARA fazer login no sistema

Contexto:Estar na página de cadastro
  Dado que esteja na página de cadastro

@cadastro_valid
Cenário: Realizar cadastro valido
  Quando eu faço cadastro com "João", "joao@gmail.com" e "senha1995"
  Então deverá realizar cadastro 

@cadastro_invalid
Cenário: Realizar cadastro invalido
  Quando eu faço cadastro com "João", "joao@gmail" e "senha1995"
  Então deverá apresentar mensagem de erro "Email deve ser um email válido"

@cadastro_vazio
Cenário: Campos vazios
  Quando eu faço cadastro com "", "" e ""
  Então deverá apresentar mensagens de erro em cadastrar "Nome não pode ficar em branco", "Email não pode ficar em branco" e "Password não pode ficar em branco"

#cucumber -t @cadastro_valid
#cucumber -t @cadastro_invalid   
#cucumber -t @cadastro_vazio