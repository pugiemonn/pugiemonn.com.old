class Events::MembersController < ApplicationController

  def index

  end

  def create
    @member = Member.new(member_params)
    logger.debug(@member)

    if @member.save
      respond_to do |format|
        format.js
      end
    else
#      redirect_to root_path
    end

  end

  private
  def member_params
    params[:member].permit(:event_id, :user_id, :status)
  end

end
