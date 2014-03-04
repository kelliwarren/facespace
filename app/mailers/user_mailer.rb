class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "no-reply@facespace.com"


  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to FaceSpace')
  end

  def weekly_email(user)
    @user = user
    mail(to: @user.email, subject: 'Weekly Email')
  end
end

#from, to, bcc, subject, cc -> can be passed




# def welcome(user_id)
#     @user = User.find(user_id)
#     mail(to: '@user.email', subject: 'Welcome to FaceSpace') #must be last thing ran
#   end