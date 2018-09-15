class SessionsController < ApplicationController
  def new
    render layout: 'main/layout-blank'
  end

  def create
    user = User.find_by(email_address: params[:session][:email_address].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to dashboard_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', layout: 'main/layout-blank'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
