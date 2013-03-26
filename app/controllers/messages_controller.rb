class MessagesController < ApplicationController

  def create
    session[:return_to] = request.referer
    @message = Message.new(params[:message])
    if @message.valid?
      flash[:success] = "Message sent! Thanks #{@message.name} for contacting me."
      Contact.contact_me(@message).deliver
    else
      flash[:error] = "The message couldn't been sent. Try again later."
    end
    redirect_to session[:return_to]
  end

end
