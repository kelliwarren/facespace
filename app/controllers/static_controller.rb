class StaticController < ApplicationController

  def index
  end

  def welcome
  #   UserMailer.welcome(current_user).deliver
  #   redirect_to root_path, notice: 'welcome'
  end


  def contact
    @contact = Contact.new
    if request.post?
      @contact.assign_attributes(contact_params)
      if @contact.save
        # AdminMailer.contact_form(params[:contact]).deliver
        redirect_to contact_path, notice: "We will be with you never"
    else
      flash[:alert] = "oops"
      render contact
    end
  end
end

private

def contact_params
  params.require(:contact).permit(:name, :email, :question)
end

  # def thanks
  #   UserMailer.thanks(current_user).deliver
  #   redirect_to root_path, notice: 'you are awesome'
  # end
end


