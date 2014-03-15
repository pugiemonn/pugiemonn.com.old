class EventattendanceController < ApplicationController
  def new

  end

  def create
    @eventattendance = Eventattendance.new(event_params)
    if @eventattendance.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end