class Event

  def self.find_by_zip(zip)
    service = EventService.new
    data = service.events(zip)
    events = data["events"].map do |event|
      Event.new(event)
    end
    binding.pry
  end

  attr_reader :url, :city_name, :start_time, :description, :title, :venue_address, :venue_name

  def initialize(data)
    binding.pry
    @url = data[1][0]["url"]
    @city_name = data[1][0]["city_name"]
    @start_time = data[1][0]["start_time"]
    @description = data[1][0]["description"]
    @title = data[1][0]["title"]
    @venue_address = data[1][0]["venue_address"]
    @venue_name = data[1][0]["venue_name"]
  end

  def nil_guard(data)
    if data.nil?
      "Not provided"
    else
      data
    end
  end
end