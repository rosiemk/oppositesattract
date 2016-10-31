require './email'
require 'sinatra'

get('/') do
	erb :signup
end

post('/signup') do
	@name = params[:name].capitalize
	puts params
	erb :welcome  # change this page to the page where the next values will go.

end


get('/signup') do
		  
		@@email = params[:email].downcase
		puts params
	erb :welcome #value added to welcome page
	rb :email #this isn't making var available to email.rb, why not?
	
	
end 
	$send_email #defined in email.rb file
	
	


	
