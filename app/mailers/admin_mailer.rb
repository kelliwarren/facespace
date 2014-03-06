class AdminMailer < ActionMailer::Base
  default from: "contact@facespace.com",
          to: 'me@facespace.com'
  
  def contact_form(contact)
    @contact = contact
    mail(subject: "New contact from submission")

  end

  def newsletter_form(newsletter)
    @newsletter = newsletter
    mail(subject: "Newsletter Goodness")
  end
end
