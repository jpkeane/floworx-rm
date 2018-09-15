class FrontPagesController < ApplicationController
  skip_before_action :logged_in_user

  layout 'front_pages/front_pages'

  def home; end
end
