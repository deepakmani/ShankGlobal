ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.yahoo.com",  
      :port                 => 25,  
      :user_name            => "deepakmani@yahoo.com", #Your user name
      :password             => "Han1uman", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true,  
  }

#config.action_mailer.default_url_options = { :host => "localhost:4000" }

# Must update this for Production Deployment
ActionMailer::Base.default_url_options[:host] = "localhost:4000"
