class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  before_filter :get_user
  protect_from_forgery

  def get_user
    @user = current_user
  end

end
