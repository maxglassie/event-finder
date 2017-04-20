class SearchController < ApplicationController

  def index
    @event_count = EventService.new.events(params["q"])["total_items"]
    @events = Event.find_by_zip(params["q"])
  end

end