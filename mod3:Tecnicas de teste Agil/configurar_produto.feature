#language: pt

Funcionalidade: Configurar produto
  Como cliente da loja
  Deseja-se selecionar cor, tamanho e quantidade de um produto
  Para adicioná-lo corretamente ao carrinho

  Esquema do Cenário: Seleção obrigatória de cor, tamanho e quantidade
    Dado que o cliente acessa a página de configuração do produto
    Quando seleciona a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    E clica no botão "Adicionar ao carrinho"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | cor   | tamanho | quantidade | mensagem                                     |
      |       | P       | 1          | Cor é obrigatória                            |
      | Azul  |         | 1          | Tamanho é obrigatório                        |
      | Azul  | M       |            | Quantidade é obrigatória                     |
      | Azul  | M       | 5          | Produto adicionado ao carrinho com sucesso  |

  Cenário: Validação do limite máximo de produtos por venda
    Dado que o cliente acessa a página de configuração do produto
    Quando seleciona uma quantidade superior a 10 unidades
    Então o sistema deve exibir uma mensagem informando que o limite máximo permitido é 10

  Esquema do Cenário: Limpeza das seleções realizadas
    Dado que o cliente selecionou a cor "<cor>", o tamanho "<tamanho>" e a quantidade "<quantidade>"
    Quando clica no botão "Limpar"
    Então o sistema deve remover todas as seleções realizadas

    Exemplos:
      | cor   | tamanho | quantidade |
      | Azul  | P       | 2          |
      | Preto | M       | 5          |
