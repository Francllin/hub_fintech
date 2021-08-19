module Modelo
  class Api
    def gerar(url_status, verbo, body=nil)
      url = URI("#{URL}#{url_status}")
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request =  case verbo
              when 'get' then Net::HTTP::Get.new(url)
              when 'post' then Net::HTTP::Post.new(url)
              when 'delete' then Net::HTTP::Delete.new(url)
              else
                raise 'Não possui esse verbo'
              end
      request["accept"] = "*/*"        
      request["Content-type"] = buscar_massa('content_type')
      request.body = body unless body.nil?

      response = https.request(request)
      response
    end
  end
end