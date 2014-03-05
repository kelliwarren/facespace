class StaticController < ApplicationController

  def index
  end

  def welcome
  #   UserMailer.welcome(current_user).deliver
  #   redirect_to root_path, notice: 'welcome'
  end


  def contact
    if request.post?
    AdminMailer.contact_form(params).deliver
    redirect_to contact_path, notice: "We will be with you never"
    end
  end

  # def thanks
  #   UserMailer.thanks(current_user).deliver
  #   redirect_to root_path, notice: 'you are awesome'
  # end
end


