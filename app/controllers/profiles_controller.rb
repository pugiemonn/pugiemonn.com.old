class ProfilesController < ApplicationController

  before_action :set_profile

  def index
  end

  def update
    @profile.update(profile_name)
    redirect_to profiles_path
  end

  private
    def set_profile
      if user_signed_in?
        unless current_user.profile
          Profile.create(user: current_user)
        else
          @profile = Profile.find_by_user_id(current_user.profile.user_id)
        end
      else
        redirect_to new_user_session_path
      end
    end

    def profile_name
      params[:profile].permit(:name)
    end
end