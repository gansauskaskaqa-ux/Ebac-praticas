      #language:pt

      Funcionalidade: Cadastro de dados no checkout
      Como cliente da EBAC-SHOP,quero realizar o cadastro dos meus dados no checkout
      Para finalizar minha compra com sucesso

      Contexto:
      Dado que estou na tela de checkout
      E possuo produtos adicionados ao carrinho

      Cenário Outline: Finalizar compra com dados obrigatórios preenchidos
      Quando preencho os campos "<nome>", "<email>", "<cpf>", "<endereco>", "<telefone>"
      E clico no botão "Finalizar compra"
      Então a compra deve ser concluída com sucesso e exibir uma mensagem de confirmaçao do pedido

      Exemplos:
      | nome         | email           | cpf         | endereco        | telefone    |
      | Maria Silva  | maria@email.com | 12345678901 | Rua A, 100      | 11999999999 |
      | João Pereira | joao@email.com  | 98765432100 | Av Central, 200 | 21988888888 |

      Cenário Outline: Impedir finalização com campos obrigatórios vazios
      Quando deixo de preencher qualquer informação solicitada do "<campo>"
      E clico no botão "Finalizar compra"
      Então o sistema deve impedir a finalização da compra exibindo uma mensagem dizendo que as informações
      solicitadas em "<campo>" são obrigatórias

      Exemplos:
      | Campo    |
      | nome     |
      | email    |
      | cpf      |
      | endereco |
      | telefone |

      Cenário Outline: Validar formato inválido de dados no cadastro
      Quando preencho o "<campo>" com valores inválidos em  "<valor>"
      E clico no botão "Finalizar compra"
      Então o sistema deve exibir uma mensagem de erro e permanecer na tela de checkout até a correção

      Exemplos:
      | campo    | valor          |
      | email    | mariaemail.com |
      | cpf      | 12345          |
      | telefone | abcdefg        |