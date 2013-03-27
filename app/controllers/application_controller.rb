class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :global_variables

  def global_variables
    @instagram_pictures = InstagramWrapper.user_recent_media
    @contact_me_message = Message.new
    @song_of_the_day = Song.order("created_at DESC").first
  end

  def administrator
    unless current_user.administrator
      flash[:error] = "You don't have permissions to perform the action."
      redirect_to root_url
    end
  end
  
end
