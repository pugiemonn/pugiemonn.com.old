class MypageController < ApplicationController

  def index
    if user_signed_in?
      @owner_events = Event.find(:all, current_user, limit: 10, order: "created_at DESC")
    end
  end
end
