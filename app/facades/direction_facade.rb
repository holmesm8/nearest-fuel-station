class DirectionFacade
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def distance
    @data[:routes][0][:legs][0][:distance][:text]
  end

  def travel_time
    @data[:routes][0][:legs][0][:duration][:text]
  end

  def instructions
    @data[:routes][0][:legs][0][:steps][-1][:html_instructions]
  end
end
