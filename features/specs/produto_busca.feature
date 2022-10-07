#language: pt

@search
Funcionalidade: Busca
COMO usuário do site Server Rest
QUERO poder buscar por diferentes produtos
PARA poder personalizar minhas compras 

Contexto: Estar na home interna
  Dado que esteja na home interna

Cenário: Realiza o login/buscar produtos
  Quando faço login
  E deverá buscar pelo produto 
  Então deverão ser retornados resultados na busca 
  


