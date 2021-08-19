def to_create_book(body)
  Modelo::Api.new.gerar('api/v1/Books', 'post', body)
end