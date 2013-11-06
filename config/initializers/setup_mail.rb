ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :user_name            => "deepakm.ccx@gmail.com", #Your user name
      :password             => "martian12", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true,  
      :domain               => "gmail.com" 
  }

#config.action_mailer.default_url_options = { :host => "localhost:4000" }

# Must update this for Production Deployment
ActionMailer::Base.default_url_options[:host] = "localhost:4000"
