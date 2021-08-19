# encoding: utf-8
# language:pt

@api
@books
Funcionalidade: Criar Books via api
  Como usuario do sisema
  Quero poder Criar novos cadastros de Books
  Para organizar meus Books

  @#francllin_rios
  @post_books
  Cenário: Criar novos cadastros de Books
    Quando criar o payload para cadastrar um novo Books
    Então validar que o book foi cadastrado com sucesso
