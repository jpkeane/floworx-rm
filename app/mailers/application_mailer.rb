class ApplicationMailer < ActionMailer::Base
  default from: 'do_not_reply@celerious.com'
  layout 'mailer'
end
