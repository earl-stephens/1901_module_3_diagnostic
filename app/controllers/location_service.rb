class LocationService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def connection
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?limit=1&api_key=f7bQ5VZkpwcU0F8lYJmx0fYUmSVKU0GSk8GgRH4o") do |faraday|
      # faraday.headers["X-api_key"] = ENV['nrel_key']
      faraday.adapter Faraday.default_adapter
    end
    # binding.pry
  end

  def get_data
    @conn = connection
    results = @conn.get("/api/alt-fuel-stations/v1/nearest?format=json&api_key=f7bQ5VZkpwcU0F8lYJmx0fYUmSVKU0GSk8GgRH4o&location=80206&status=E&access=public&fuel_type=ELEC,LPG")
    results = JSON.parse(results.body)
    # binding.pry
  end

end
