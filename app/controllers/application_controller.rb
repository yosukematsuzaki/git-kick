class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :get_info
  
  private
  def get_info
    @get_fighters = Fighter.all
    @get_tags = Tag.all
  end

end
