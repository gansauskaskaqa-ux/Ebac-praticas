#language:pt
Funcionalidade: Cadastro de dados no checkout
  Como cliente da EBAC-SHOP
  Quero realizar o cadastro dos meus dados no checkout
  Para finalizar minha compra com sucesso

  Contexto:
    Dado que estou na tela de checkout
    E possuo produtos adicionados ao carrinho

  Cenário Outline: Finalizar compra com dados obrigatórios preenchidos
    Quando preencho o campo nome com "<nome>"
    E preencho o campo email com "<email>"
    E preencho o campo cpf com "<cpf>"
    E preencho o campo endereco com "<endereco>"
    E preencho o campo telefone com "<telefone>"
    E clico no botão "Finalizar compra"
    Então a compra deve ser concluída com sucesso
    E devo visualizar a confirmação do pedido

    Exemplos:
      | nome         | email             | cpf         | endereco           | telefone     |
      | Maria Silva  | maria@email.com   | 12345678901| Rua A, 100         | 11999999999 |
      | João Pereira | joao@email.com    | 98765432100| Av Central, 200    | 21988888888 |

  Cenário Outline: Impedir finalização com campos obrigatórios vazios
    Quando deixo de preencher o campo "<campo>"
    E clico no botão "Finalizar compra"
    Então o sistema deve impedir a finalização da compra
    E deve exibir uma mensagem informando que o campo "<campo>" é obrigatório

    Exemplos:
      | campo     |
      | nome      |
      | email     |
      | cpf       |
      | endereco  |
      | telefone  |

  Cenário Outline: Validar formato inválido de dados no cadastro
    Quando preencho o campo "<campo>" com valor inválido "<valor>"
    E clico no botão "Finalizar compra"
    Então o sistema deve exibir uma mensagem de erro
    E devo permanecer na tela de checkout

    Exemplos:
      | campo    | valor            |
      | email    | mariaemail.com   |
      | cpf      | 12345            |
      | telefone | abcdefg          |