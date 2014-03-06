class Contact < ActiveRecord::Base

   after_create :contact_email

private

  def contact_email
    AdminMailer.contact_form(self).deliver
  end
end
