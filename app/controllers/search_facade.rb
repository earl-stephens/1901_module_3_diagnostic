class SearchFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def locations
    binding.pry
    location_results["fuel_stations"].map do |ouptut|
      Location.new(output)
    end
  end

  private

  def location_results
    location_to_search = @location
    results = LocationService.new(location_to_search)
    results_in_json = results.get_data
    results_in_json
    # binding.pry
  end

end
