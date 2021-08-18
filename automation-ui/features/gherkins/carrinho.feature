# encoding: utf-8
# language:pt

@web
@novo_produto
Funcionalidade: Compa de produto no site Magazine Luiza
  Como uruário do site Magazine Luiza
  Quero poder adiquirir um novo produto
  De modo que possa finalizar a sua compra com susesso

  Background: acessar a home
      * acessar a tela home principal so site Magazine Luiza

  @#francllin_rios
  @validar_descriao_produto
  Cenário: Validar se as informações da página do produto condizem com a descriçao da vitrine
    Dado buscar por um produto do tipo vestuário
    Entao validar se as informações da página do produto condizem com a descriçao da vitrine

  @#francllin_rios
  @validar_produto_no_carrinho
  Cenário: Validar se o produto está no carrinho
    Dado buscar por um produto do tipo vestuário
    Quando incluir o produto no carrinho
    E incluir um CEP valido para entrega
    Entao validar que o produto está no carrinho com sucesso

  @#francllin_rios
  @excluir_produto_do_carrinho
  Cenário: Excluir produto do carrinho
    Dado buscar por um produto do tipo vestuário
    E incluir o produto no carrinho
    E incluir um CEP valido para entrega
    Quando exluir o produto do carrinho
    Entao validar que o produto foi excluido com sucesso do carrinho

  @#francllin_rios
  @adicionar_mais_um_produto_do_mesmo
  Cenário: Adicionar mais um produto do mesmo no carrinho
    Dado buscar por um produto do tipo vestuário
    E incluir o produto no carrinho
    E incluir um CEP valido para entrega
    Quando adicionar mais um produto
    Entao validar que o produto foi adicionado com sucesso