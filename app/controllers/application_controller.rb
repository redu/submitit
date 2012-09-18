class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :current_space

  protected

  def current_user
    if uid = session[:user_id]
      User.find_by_uid(uid)
    end
  end

  def current_space
    Space.find_or_create_by_sid("1412")
  end
end
