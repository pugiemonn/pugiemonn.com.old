class ProfilesController < ApplicationController
  def index
    if user_signed_in?
      unless current_user.profile
        Profile.create(user: current_user)
      end
    else
      redirect_to new_user_session_path
    end
  end
end