class UserMailer < ActionMailer::Base
  default from: "no-reply@example.com"

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Twitter')
  end
end
