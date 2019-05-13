class Location
# Name, Address, Fuel Types, Distance, and Access Times
  def initialize(location_data)
    @name = location_data["station_name"]
    @address = location_data["street_address"]
    @fuel_types = location_data["fuel_type_code"]
    @distance = location_data["distance"]
    @access_times = location_data["access_days_time"]
    binding.pry
  end

end
