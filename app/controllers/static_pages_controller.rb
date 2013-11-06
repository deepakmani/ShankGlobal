class StaticPagesController < ApplicationController
  def home
     @message=Message.new
  end


    def contact
        render :layout => false

        # Create a new message model as we load the View for contact 
        @message = Message.new
      
     end

        # Call the create method when we hit the send button 
    def create
           @message = Message.new(params[:message])
           
          if @message.valid?
             NotificationsMailer.new_message(@message).deliver
             redirect_to(root_path, :notice => "Message was successfully sent.")
           else
              flash.now.alert = "Please fill all the fields."
           end # Else block
       
    end # Create method
           
end #StaticPagesController


