class Newsletter < ActiveRecord::Base

  after_create :newsletter_email

  private

  def newsletter_email
    UserMailer.newsletter(self).deliver
  end

end
