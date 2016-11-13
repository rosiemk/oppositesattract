
require 'pony'




def send_email(name, email, body)  #function


Pony.options = {
	:via => 'smtp',
	:via_options => {
	:address => 'smtp.mailgun.org',
	:port => '587',
	:enable_starttls_auto => true,
	:authetication => :plain,

	#Default Mailgun SMTP Login:
	:user_name => 'postmaster@sandbox8fd8fe73d6254abd8e2bad572cdf4517.mailgun.org',
	#Default password
	:password => 'd7c9920cc4e521d08f4aa6937c1b0300'
	}
}



	print email
	message = {
	
		:from => 'rvmunrokerr@gmail.com',
		:to => "#{name}<#{email}>",   #string interpolation
		:subject => 'Your UnMatch Awaits...',
		:body => "#{body}"

	}
	p message   # p is like puts for debugging	
	Pony.mail(message)
end 
