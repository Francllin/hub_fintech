Dado('acessar a tela home principal so site Magazine Luiza') do
  await(30) { home.inpt_search_home.visible? }
end

Quando('buscar por um produto do tipo vestuário') do
  home.inpt_search_home.set(buscar_massa('vestuario tenis'))
  await(30) { home.span_icon_busca.visible? }
  home.span_icon_busca.click
  await(30) { home.li_produto.first.visible? }
  home.li_produto.first.click
end

Entao('validar se as informações da página do produto condizem com a descriçao da vitrine') do
  await(30) { home.h1_titulo_produto.visible? }
  expect(home.h1_titulo_produto.text).to eql(buscar_massa('vestuario tenis'))
end

Quando('incluir o produto no carrinho') do
  @quantidade = home.slc_tamanho.all('option').collect(&:text).each { |opt| break opt unless opt.include?('Não disponível') || opt.include?('Selecione') }
  home.slc_tamanho.select(@quantidade)
end

Dado('incluir um CEP valido para entrega') do
  home.inpt_cep.set(buscar_massa('dados_pessoais cep'))
  home.btn_ok_cep.click
  wait_time(2)
  home.btn_add_sacola.click
end

Entao('validar que o produto está no carrinho com sucesso') do
  await(30) { home.div_item_carrinho.visible? }
  expect(home.div_item_carrinho.visible?).to be_truthy
  expect(page.text).to include(buscar_massa('dados_pessoais cep'))
end

Quando('exluir o produto do carrinho') do
  await(30) { home.span_exluir_do_carrinho.visible? }
  home.span_exluir_do_carrinho.click
end

Entao('validar que o produto foi excluido com sucesso do carrinho') do
  await(30) { home.div_text_sacola_vazia.visible? }
  expect(home.div_text_sacola_vazia.visible?).to be_truthy
  expect(home.div_text_sacola_vazia.text).to eq('Sua sacola está vazia')
end

Quando('adicionar mais um produto') do
  @quantidade_atual = home.select_quantidade.value
  home.select_quantidade.select('2')
end

Entao('validar que o produto foi adicionado com sucesso') do
  wait_time(2)
  expect(@quantidade_atual.to_i != 2).to be_truthy
  expect(home.select_quantidade.value).to eq('2')
end
