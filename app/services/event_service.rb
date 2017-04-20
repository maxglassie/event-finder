class EventService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://api.eventful.com/")
    @api_key = ENV['api_key']
  end

  def events
    response = @connection.get("/json/events/search?location=80203&date=march&page_size=16&app_key=#{@api_key}")
    events = JSON.parse(response.body)
  end

end