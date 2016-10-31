
require 'pony'


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

message ={
	
	:from => 'rvmunrokerr@gmail.com',
	:to => 'rvmunrokerr@gmail.com', #@@email,   #how do i include email var from opposites.rb file?
	:subject => 'Welcome',
	:body => 'Thanks for signing up to our newsletter!'

}

$send_email = Pony.mail(message)
$send_email