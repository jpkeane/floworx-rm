class PasswordResetsController < ApplicationController
  skip_before_action :logged_in_user
  before_action      :guest_user_only

  layout 'main/layout-blank'

  def new; end

  def create
    @user = User.find_by(email_address: params[:password_reset][:email_address])
    if @user
      @user.create_password_reset_token
      UserMailer.password_reset_email(@user).deliver_later
      flash[:info] = 'Email sent with password reset instructions to your primary email address'
      redirect_to root_url
    else
      flash.now[:danger] = 'Incorrect details entered'
      render 'new'
    end
  end

  def enter_token
    @user = User.new
  end

  def submit_token
    validate_token(password_reset_token: params[:user][:password_reset_token])
  end

  def submit_token_from_email
    validate_token(password_reset_token: params[:token])
  end

  def reset_password
    @user = User.find_by(password_reset_token: params[:password_reset_token])
    if params[:user][:password].blank?
      @user.errors.add(:password, 'must be entered')
      render 'reset_password'
    elsif @user.update(user_update_password_params)
      valid_password_change
    else
      render 'reset_password'
    end
  end

  private

  def validate_token(token)
    @user = User.find_by(token)
    if @user
      render 'reset_password'
    else
      flash.now[:danger] = 'Password reset token not found'
      @user = User.new
      render 'enter_token'
    end
  end

  def valid_password_change
    @user.forget_all_remember_tokens
    UserMailer.password_reset_successful_email(@user).deliver_later
    flash[:success] = 'Password changed'
    redirect_to root_path
  end

  def user_update_password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
