# encoding: utf-8
# language:pt

@api
@books
Funcionalidade: Buscar todos os Books via api
  Como usuario do sisema
  Quero poder Buscar todos os Books
  Para visualidar o todo

  @#francllin_rios
  @get_all_books
  Cenário: Buscar todos os cadastros de Books
    Quando criar o payload para buscar todos os cadastrar de Books
    Então validar que o book foi consultado com sucesso
