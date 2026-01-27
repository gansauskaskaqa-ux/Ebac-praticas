#language: pt

Funcionalidade: Configurar produto antes de adicionar ao carrinho
  Como cliente da EBAC SHOP
  Quero configurar um produto de acordo com cor, tamanho e quantidade
  Para depois adicioná-lo corretamente ao carrinho

  Contexto:
    Dado que estou na página de detalhes de um produto
    E o produto possui opções de cor, tamanho e quantidade disponíveis

  Cenário: Exigir seleção obrigatória de cor, tamanho e quantidade
    Quando tento adicionar o produto ao carrinho sem selecionar todas as opções
    Então o sistema deve impedir a adição ao carrinho
    E deve exibir uma mensagem informando que cor, tamanho e quantidade são obrigatórios

  Esquema do Cenário: Configurar produto com combinações válidas
    Quando seleciono a cor "<cor>"
    E seleciono o tamanho "<tamanho>"
    E seleciono a quantidade "<quantidade>"
    E adiciono o produto ao carrinho
    Então o produto deve ser adicionado ao carrinho com a configuração escolhida

    Exemplos:
      | cor       | tamanho | quantidade |
      | Preto     | P       | 1          |
      | Azul      | M       | 2          |
      | Vermelho  | G       | 5          |

  Cenário: Limitar a quantidade máxima de produtos por venda
    Quando seleciono uma quantidade maior que 10
    Então o sistema deve impedir a seleção
    E deve exibir uma mensagem informando o limite máximo de 10 produtos por venda

  Cenário: Limpar configurações do produto
    Dado que selecionei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então as opções de cor, tamanho e quantidade devem voltar ao estado original