# language: pt
@cadastrar_usuarios
Funcionalidade: Cadastrar usuario
    Como usuário do ServeRest
    Quero realizar um cadastro
    Para verificar o funcionamento do site

    Contexto: Esteja na tela de Cadastro
        Dado que esteja na tela de Cadastro

@cadastro_usuario
Cenário: cadastro usuario
    Quando inserir os dados usuarios validos <nome>, <email>, <senha>
    Então o usuário será cadastrado <msg>
    Exemplos:
    | nome      | email                | senha                | msg                              |
    | "user"    | "email_user"         | "senha_user"         | "Cadastro realizado com sucesso" |

@cadastro_usuario_error
Cenário: cadastro usuario error
    Quando inserir os dados usuarios inválidos <nome>, <email>, <senha>
    Então o usuário deverá receber uma mensagem de erro <msg>
    Exemplos:
    | nome                   | email                | senha                 | msg                                 |
    | "nome"                 | "senha_user_invalid" | "senha"               | "Email é obrigatório"               |
    | "nome"                 | "email"              | "senha_user_invalid"  | "Password não pode ficar em branco" |
    | "senha_user_invalid"   | "email"              | "senha"               | "Nome não pode ficar em branco"     |

@cadastro_adm
Cenário: cadastro adm
    Quando inserir os dados adm válidos <nome>, <email>, <senha>
    Então o usuário administrador deverá ser cadastrado com a mensagem <msg>
    Exemplos:
    | nome          | email               | senha               | msg                              |
    |  "user_adm"   |  "email_user_adm"   | "senha_user_adm"    | "Cadastro realizado com sucesso" |

@cadastro_adm_error
Cenário: cadastro adm error
    Quando inserir os dados adm inválidos <nome>, <email>, <senha>
    Então o usuário deverá receber uma mensagem adm <msg>
    Exemplos:
    | nome         | email             | senha                  | msg                                 |
    |  "user_adm"  | "email_user_adm"  |  "user_adm_invalid"    | "Password não pode ficar em branco" |
    |  "user_adm"  | "user_adm_invalid"|  "senha_adm"           | "Email é obrigatório"               |



#bundle exec cucumber -p default -t@cadastro_usuario
#bundle exec cucumber -p default -t@cadastro_usuario_error
#bundle exec cucumber -p default -t@cadastro_adm
#bundle exec cucumber -p default -t@cadastro_adm_error