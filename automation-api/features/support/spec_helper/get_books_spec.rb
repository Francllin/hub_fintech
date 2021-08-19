def get_book(id)
  Modelo::Api.new.gerar("api/v1/Books/#{id}", 'get')
end

def get_all_book()
  Modelo::Api.new.gerar('api/v1/Books', 'get')
end