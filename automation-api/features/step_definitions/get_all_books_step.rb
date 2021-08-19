Quando('criar o payload para buscar todos os cadastrar de Books') do
  @response = get_all_book()
end

Então('validar que o book foi consultado com sucesso') do
  response_body_consult = @id.nil? ? JSON.parse(@response.body)[0].keys : JSON.parse(@response.body).keys
  aggregate_failures do
    expect(@response.code).to eql buscar_massa('code ok')
    expect(response_body_consult[0]).to eql 'id'
    expect(response_body_consult[1]).to eql 'title'
    expect(response_body_consult[2]).to eql 'description'
    expect(response_body_consult[3]).to eql 'pageCount'
    expect(response_body_consult[4]).to eql 'excerpt'
    expect(response_body_consult[5]).to eql 'publishDate'
    expect(JSON.parse(@response.body)['id']).to eql @id.to_i unless @id.nil?
  end
end

Quando('criar o payload para buscar o Books por id {string}') do |id|
  @id = id
  @response = get_book(@id)
end