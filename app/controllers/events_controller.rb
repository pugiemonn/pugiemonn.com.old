class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      #render 'new'
      redirect_to root_path
    end
  end

  def show
    @event      = Event.find(params[:id])

    if user_signed_in?
      @attendance = Eventattendance.new(event: @event, user: current_user)
    end
  end

  private
    def event_params
      params[:event].permit(:title, :description, :user_id)
    end
end
