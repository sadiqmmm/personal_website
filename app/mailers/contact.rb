class Contact < ActionMailer::Base
  default from: "info@jorgecoca.com"
  default to: "jcocaramos@gmail.com"

  def contact_me(message)
    @message = message
    mail(subject: "New message from jorgecoca.com")
  end
end
