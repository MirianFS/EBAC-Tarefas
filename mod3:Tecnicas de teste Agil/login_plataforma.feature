Feature: Login na plataforma

  Scenario Outline: Tentativa de login com diferentes credenciais
    Given que estou na página de login
    When insiro o e-mail "<email>" e a senha "<senha>"
    And clico no botão "Entrar"
    Then devo ver "<resultado>"

    Examples:
      | email              | senha       | resultado                          |
      | usuario@teste.com  | senha123   | Redirecionado para checkout        |
      | usuario@teste.com  |            | Usuário ou senha inválidos         |
      |                   | senha123    | Usuário ou senha inválidos         |
      | usuario@teste.com  | senhaerrada | Usuário ou senha inválidos         |
      | admin@teste.com    | admin123    | Redirecionado para checkout        |
