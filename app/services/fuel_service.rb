class FuelService

  def fuel(location)
    get_json("nearest.json?location=#{location}&api_key=#{ENV['FUEL_API_KEY']}")
  end

  private

    def get_json(url)
      response = conn.get(url)
      json_response = JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1")
    end
end
