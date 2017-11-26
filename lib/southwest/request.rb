require_relative './errors'

module Southwest
  class Request
    protected

    def make_request(path, params, content_type)
      Typhoeus::Request.get("#{base_uri}#{path}", {
        params: params, headers: headers(content_type)
      })
    end

    def headers(content_type)
      {
        'User-Agent' => user_agent,
        'Content-Type' => content_type,
        'X-Api-Key' => api_key,
        'Accept-Language' => 'en-US;q=1'
      }
    end

    def base_uri
      'https://mobile.southwest.com/api/extensions/v1/mobile'
    end

    def user_agent
      "Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4"
    end

    def api_key
      "l7xx12ebcbc825eb480faa276e7f192d98d1"
    end
  end
end
