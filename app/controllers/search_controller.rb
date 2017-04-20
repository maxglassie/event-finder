class SearchController < ApplicationController

  def index
    @events = Events
  end

end