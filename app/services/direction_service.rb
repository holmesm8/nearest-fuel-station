class DirectionService

  def location(current, destination)
    get_json("json?origin=#{current}&destination=#{destination}&key=#{ENV['GOOGLE_API_KEY']}")
  end

  private

    def get_json(url)
      response = conn.get(url)
      json_response = JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      conn = Faraday.new(url: "https://maps.googleapis.com/maps/api/directions")
    end
end
