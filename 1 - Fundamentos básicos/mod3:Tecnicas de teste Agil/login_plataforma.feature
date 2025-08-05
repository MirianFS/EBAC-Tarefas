#language: pt

Funcionalidade: Login na plataforma
  Como usuário da loja
  Deseja-se autenticar-se na plataforma
  Para acessar o processo de checkout de forma segura

  Esquema do Cenário: Tentativa de login com diferentes credenciais
    Dado que o usuário acessa a página de login
    Quando informa o e-mail "<email>" e a senha "<senha>"
    E clica no botão "Entrar"
    Então o sistema deve exibir "<resultado>"

    Exemplos:
      | email              | senha       | resultado                          |
      | usuario@teste.com  | senha123    | Redirecionado para checkout        |
      | usuario@teste.com  |             | Usuário ou senha inválidos         |
      |                    | senha123    | Usuário ou senha inválidos         |
      | usuario@teste.com  | senhaerrada | Usuário ou senha inválidos         |
      | admin@teste.com    | admin123    | Redirecionado para checkout        |
