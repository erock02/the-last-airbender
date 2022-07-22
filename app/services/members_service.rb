class MembersService
  class << self

  def get_nation_members(nation)
    call_api("/api/v1/characters?affiliation=#{nation}&perPage=500")
  end

  private
    def call_api(path)
      response = conn.get(path)
      parsed_data(response)
    end

    def conn
      conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com/')
    end

    def parsed_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
