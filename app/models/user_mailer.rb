class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
  
    @body[:url]  = "http://localhost:3000/activate/#{user.activation_code}"
  
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://localhost:3000/"
  end

	def jss_email
	  @recipients  = "jshortlidge@datacollaborative.com"
	  @from        = "interethos@interethos.net"
	  @subject     = "InterEthos - TEST YAHOO"
	  @sent_on     = Time.now
	  @body = "helloooooo from Production"
	end
  
  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = "interethos@interethos.net"
      @subject     = "InterEthos - "
      @sent_on     = Time.now
      @body[:user] = user
    end
end
