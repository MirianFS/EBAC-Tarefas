Feature: Cadastro no Checkout

  Scenario Outline: Validação dos campos obrigatórios no cadastro
    Given que estou na página de cadastro
    When preencho os campos obrigatórios com os seguintes dados:
      | Nome    | Email            | Senha    | Endereço     | Telefone  |
      | <nome>  | <email>          | <senha>  | <endereco>   | <telefone> |
    And clico no botão "Cadastrar"
    Then devo ver "<mensagem>"

    Examples:
      | nome   | email              | senha    | endereco       | telefone     | mensagem                                      |
      | João   | joao@email.com     | senha123 | Rua A, 100     | 11999999999  | Cadastro realizado com sucesso                |
      |        | maria@email.com    | senha123 | Rua B, 200     | 11988888888  | Nome é obrigatório                           |
      | Pedro  |                   | senha123 | Rua C, 300     | 11977777777  | Email é obrigatório                          |
      | Ana    | anaemail.com       | senha123 | Rua D, 400     | 11966666666  | Formato do email inválido                    |
      | Lucas  | lucas@email.com    |         | Rua E, 500     | 11955555555  | Senha é obrigatória                          |
      | Carol  | carol@email.com    | senha123 |                | 11944444444  | Endereço é obrigatório                       |
      | Bruno  | bruno@email.com    | senha123 | Rua F, 600     |             | Telefone é obrigatório                       |

  Scenario: Mensagem de erro ao tentar cadastrar com campos vazios
    Given que estou na página de cadastro
    When tento cadastrar sem preencher nenhum campo
    Then devo ver a mensagem "Todos os campos são obrigatórios"

  Scenario Outline: Validação do formato de e-mail
    Given que estou na página de cadastro
    When insiro um e-mail "<email>"
    And clico no botão "Cadastrar"
    Then devo ver a mensagem "<mensagem>"

    Examples:
      | email             | mensagem                           |
      | testeemail.com    | Formato do e-mail inválido        |
      | @gmail.com        | Formato do e-mail inválido        |
      | usuario@          | Formato do e-mail inválido        |
      | usuario@email.com | Cadastro realizado com sucesso   |
