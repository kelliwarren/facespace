class Newsletter < ActiveRecord::Base


     after_create :newsletter_email

     after_create :email_newsletter

private

  def newsletter_email
    AdminMailer.newsletter_form(self).deliver
  end

  def email_newsletter
    UserMailer.newsletter(self).deliver
  end
end
