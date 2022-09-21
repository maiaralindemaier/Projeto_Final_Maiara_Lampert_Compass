#language: pt

@search
Funcionalidade: Busca
COMO usuário do site Server Rest
QUERO poder buscar por diferentes produtos
PARA poder personalizar minhas compras 

Contexto: Estar na home interna
  Dado que esteja na home interna

Cenário: Realiza o login/buscar produtos
  Quando faço login com "joao@gmail.com" e "senha1995"
  E deverá buscar pelo produto '<produtos>' 
  Então deverão ser retornados resultados na busca '<produtos>'
  
Exemplos:
|produtos                        |
|Awesome Metal Chips             |
|Logitech MX Vertical            |

