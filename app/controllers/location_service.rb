class LocationService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def connection
    conn = Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1') do |faraday|
      faraday.headers["X-api_key"] = ENV['nrel_key']
      faraday.adapter Faraday.default_adapter
    end
    binding.pry
  end

end
