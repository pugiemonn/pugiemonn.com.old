class HomeController < ApplicationController
  def index
    @event  = Event.new
    @events = Event.order("id DESC").limit(10)
  end
end
