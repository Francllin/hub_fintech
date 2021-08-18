module Pages
  class Home < SitePrism::Page
    element :inpt_search_home, 'input[id="inpHeaderSearch"]'
    element :span_icon_busca, 'span[id="btnHeaderSearch"]'
    elements :li_produto, 'li[class="product"]'
    element :h1_titulo_produto, 'h1[class="header-product__title"]'
    element :slc_tamanho, 'select[id="variation-label"]'
    element :inpt_cep, 'input[name="zipcode"]'
    element :btn_ok_cep, 'button[aria-label="calcular cep"]'
    element :btn_add_sacola, 'span[class="button__text"]'
    element :div_item_carrinho, 'div[class="BasketItemProduct"]'
    element :span_exluir_do_carrinho, 'span[class="BasketItem-delete-label"]'
    element :div_text_sacola_vazia, 'div[class="EmptyBasket-title"]'
    element :select_quantidade, 'select[class="BasketItemProduct-quantity-dropdown"]'
  end
end
