Feature: Configurar produto

  Scenario Outline: Seleção obrigatória de cor, tamanho e quantidade
    Given que estou na página de configuração do produto
    When seleciono a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    And clico no botão "Adicionar ao carrinho"
    Then devo ver a mensagem "<mensagem>"

    Examples:
      | cor   | tamanho | quantidade | mensagem                                      |
      |       | P       | 1          | Cor é obrigatória                             |
      | Azul  |        | 1          | Tamanho é obrigatório                         |
      | Azul  | M       |            | Quantidade é obrigatória                      |
      | Azul  | M       | 5          | Produto adicionado ao carrinho com sucesso   |

  Scenario: Limite máximo de produtos por venda
    Given que estou na página de configuração do produto
    When seleciono uma quantidade maior que 10
    Then devo ver uma mensagem de erro informando que o limite máximo permitido é 10

  Scenario Outline: Restaurar estado original ao limpar
    Given que selecionei a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    When clico no botão "limpar"
    Then todas as seleções devem ser removidas

    Examples:
      | cor   | tamanho | quantidade |
      | Azul  | P       | 2          |
      | Preto | M       | 5          |
