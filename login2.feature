#language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login da EBAC-SHOP

  Cenário: Realizar login com dados válidos
    Quando informo um usuário e senha válidos
    E clico no botão "Login"
    Então devo ser autenticado com sucesso e ser direcionado para a tela de checkout
   
  Cenário: Exibir mensagem de erro ao informar dados inválidos
    Quando informo um usuário inválido ou senha inválida
    E clico no botão "Login"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos", permanecendo na tela de login para nova tentativa.
   