class SearchFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def locations
    location_results.map do |location|
      Location.new(location)
    end
  end

  private

  def location_results
    location_to_search = @location
    # binding.pry
    results = LocationService.new(location_to_search)
    results = results.get_data
  end

end
