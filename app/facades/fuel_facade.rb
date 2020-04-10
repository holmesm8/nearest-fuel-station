class FuelFacade
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def name
    @data[:fuel_stations][0][:station_name]
  end

  def fuel
    @data[:fuel_stations][0][:fuel_type_code]
  end

  def address
    @data[:fuel_stations][0][:street_address]
  end

  def access
    @data[:fuel_stations][0][:access_days_time]
  end
end
