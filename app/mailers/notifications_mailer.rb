class NotificationsMailer < ActionMailer::Base

  default :from => "deepakm.ccx@gmail.com"
  default :to => "deepakm.ccx@gmail.com"

  def new_message(message)
    @message = message
    mail(:to => "deepakm.ccx@gmail.com", :subject=>"Testing")
  end

end
