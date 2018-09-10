class ApplicationController < ActionController::Base
  # Default layout
  layout 'main/layout-2'

  def current_page_path?(path)
    request.path.start_with? path
  end

  helper_method :current_page_path?
end
