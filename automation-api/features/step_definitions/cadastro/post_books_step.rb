Quando('criar o payload para cadastrar um novo Books') do
  @id = Faker::Number.number(digits: 3)
  @body = JSON.parse(buscar_massa('create_books body'))
  @body['id'] = @id
  @body['title'] = Faker::Book.title
  @body['description'] = Faker::Book.publisher
  @body['pageCount'] = Faker::Number.number(digits: 5).to_s
  @body['excerpt'] = Faker::Book.author
  @response = to_create_book(@body.to_s.gsub('=>', ':'))
end

Então('validar que o book foi cadastrado com sucesso') do
  response_body_consult = JSON.parse(@response.body)
  aggregate_failures do
    expect(@response.code).to eql buscar_massa('code ok')
    expect(response_body_consult['id']).to eql @id
  end
end