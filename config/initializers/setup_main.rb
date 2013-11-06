ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
     :user_name            => "deepakm.ccx", #Your user name
      :password             => "han1uman", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }

