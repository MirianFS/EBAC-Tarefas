#language: pt

Funcionalidade: Login na plataforma

  Esquema do Cenário: Tentativa de login com diferentes credenciais
    Dado que estou na página de login
    Quando insiro o e-mail "<email>" e a senha "<senha>"
    E clico no botão "Entrar"
    Então devo ver "<resultado>"

    Exemplos:
      | email              | senha       | resultado                          |
      | usuario@teste.com  | senha123    | Redirecionado para checkout        |
      | usuario@teste.com  |             | Usuário ou senha inválidos         |
      |                    | senha123    | Usuário ou senha inválidos         |
      | usuario@teste.com  | senhaerrada | Usuário ou senha inválidos         |
      | admin@teste.com    | admin123    | Redirecionado para checkout        |
