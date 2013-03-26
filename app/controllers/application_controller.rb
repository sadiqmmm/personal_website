class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :global_variables

  def global_variables
    @instagram_pictures = InstagramWrapper.user_recent_media
  end
end
