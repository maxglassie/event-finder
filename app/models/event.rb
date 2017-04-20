class Event

  def self.find_by_zip(zip)
    service = EventService.new
    data = service.events(zip)
    events = data["events"]["event"].map do |event|
      Event.new(event)
    end
  end

  attr_reader :url, :city_name, :start_time, :description, :title, :venue_address, :venue_name

  def initialize(data)
    @url = data["url"]
    @city_name = data["city_name"]
    @start_time = data["start_time"]
    @description = data["description"]
    @title = data["title"]
    @venue_address = data["venue_address"]
    @venue_name = data["venue_name"]
  end
end