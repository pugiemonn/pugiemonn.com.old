class MypageController < ApplicationController

  def index
    if user_signed_in?
      @events        = Event.find(:all, current_user, limit: 10, order: 'created_at DESC')
      #@events_future = Event.find_by_user_id(current_user.id)
    end
  end
end
