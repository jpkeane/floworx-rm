class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :logged_in_user

  # Default layout
  layout 'main/layout-2'

  def current_page_path?(path)
    request.path.start_with? path
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = 'You are not logged in'
    redirect_to login_url
  end

  def guest_user_only
    return unless logged_in?
    flash[:danger] = 'You are already logged in'
    redirect_to root_url
  end

  helper_method :current_page_path?
end
