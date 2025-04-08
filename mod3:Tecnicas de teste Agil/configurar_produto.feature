#language: pt

Funcionalidade: Configurar produto

  Esquema do Cenário: Seleção obrigatória de cor, tamanho e quantidade
    Dado que estou na página de configuração do produto
    Quando seleciono a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    E clico no botão "Adicionar ao carrinho"
    Então devo ver a mensagem "<mensagem>"

    Exemplos:
      | cor   | tamanho | quantidade | mensagem                                     |
      |       | P       | 1          | Cor é obrigatória                            |
      | Azul  |         | 1          | Tamanho é obrigatório                        |
      | Azul  | M       |            | Quantidade é obrigatória                     |
      | Azul  | M       | 5          | Produto adicionado ao carrinho com sucesso  |

  Cenário: Limite máximo de produtos por venda
    Dado que estou na página de configuração do produto
    Quando seleciono uma quantidade maior que 10
    Então devo ver uma mensagem de erro informando que o limite máximo permitido é 10

  Esquema do Cenário: Restaurar estado original ao limpar
    Dado que selecionei a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    Quando clico no botão "limpar"
    Então todas as seleções devem ser removidas

    Exemplos:
      | cor   | tamanho | quantidade |
      | Azul  | P       | 2          |
      | Preto | M       | 5          |
