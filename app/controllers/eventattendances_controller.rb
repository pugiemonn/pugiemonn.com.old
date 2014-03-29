class EventattendancesController < ApplicationController
  def new

  end

  def create
    @eventattendance = Eventattendance.new(eventattendance_params)
    if @eventattendance.save

    else
      redirect_to root_path
    end
  end

  def attend
    @eventattendance = Eventattendance.new(event_params)
    if @eventattendance.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def eventattendance_params
    params[:eventattendance].permit(:event_id, :user_id, :status)
  end

end