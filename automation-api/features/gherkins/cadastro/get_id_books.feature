# encoding: utf-8
# language:pt

@api
@books
Funcionalidade: Buscar um Book especifico via api
  Como usuario do sisema
  Quero poder Buscar um Books atraves do seu id
  Para visualidar o as informações do mesmo

  @#francllin_rios
  @get_id_books
  Cenário: Buscar book por id
    Quando criar o payload para buscar o Books por id "2"
    Então validar que o book foi consultado com sucesso
