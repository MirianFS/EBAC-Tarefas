#language: pt

Funcionalidade: Cadastro no Checkout
  Como visitante da loja
  Deseja-se realizar o cadastro durante o processo de checkout
  Para que seja possível concluir a compra com sucesso

  Esquema do Cenário: Validação dos campos obrigatórios no cadastro
    Dado que o visitante acessa a página de cadastro
    Quando o visitante preenche os campos obrigatórios com:
      nome "<nome>", e-mail "<email>", senha "<senha>", endereço "<endereco>" e telefone "<telefone>"
    E clica no botão "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | nome   | email              | senha    | endereco       | telefone     | mensagem                                   |
      | João   | joao@email.com     | senha123 | Rua A, 100     | 11999999999  | Cadastro realizado com sucesso             |
      |        | maria@email.com    | senha123 | Rua B, 200     | 11988888888  | Nome é obrigatório                         |
      | Pedro  |                    | senha123 | Rua C, 300     | 11977777777  | E-mail é obrigatório                       |
      | Ana    | anaemail.com       | senha123 | Rua D, 400     | 11966666666  | Formato do e-mail inválido                 |
      | Lucas  | lucas@email.com    |          | Rua E, 500     | 11955555555  | Senha é obrigatória                        |
      | Carol  | carol@email.com    | senha123 |                | 11944444444  | Endereço é obrigatório                     |
      | Bruno  | bruno@email.com    | senha123 | Rua F, 600     |              | Telefone é obrigatório                     |

  Cenário: Exibição de mensagem de erro ao tentar cadastrar com todos os campos vazios
    Dado que o visitante acessa a página de cadastro
    Quando tenta realizar o cadastro sem preencher nenhum campo
    Então o sistema deve exibir a mensagem "Todos os campos são obrigatórios"

  Esquema do Cenário: Validação do formato de e-mail no cadastro
    Dado que o visitante está na página de cadastro
    Quando informa o e-mail "<email>"
    E clica no botão "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | email             | mensagem                          |
      | testeemail.com    | Formato do e-mail inválido        |
      | @gmail.com        | Formato do e-mail inválido        |
      | usuario@          | Formato do e-mail inválido        |
      | usuario@email.com | Cadastro realizado com sucesso    |
