class SearchController < ApplicationController
  def index
    service1 = FuelService.new.fuel(params["location"])
    @response = FuelFacade.new(service1)
    service2 = DirectionService.new.location(params["location"], @response.address)
    @place = DirectionFacade.new(service2)
  end
end
