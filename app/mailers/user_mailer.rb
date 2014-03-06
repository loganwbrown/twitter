class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "no-reply@example.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Twitter')
  end

  def newsletter(newsletter)
    @newsletter = newsletter
    mail(subject: 'Newsletter Signup')
  end
end
