class UserMailer < ApplicationMailer
  def changed_password_email(user)
    @user = user
    mail to: user.email_address, subject: 'Floworx RM - Password Changed'
  end

  def password_reset_email(user)
    @user = user
    mail to: @user.email_address, subject: 'Floworx RM - Reset Password'
  end

  def password_reset_successful_email(user)
    @user = user
    mail to: @user.email_address, subject: 'Floworx RM - Password has been reset'
  end
end
