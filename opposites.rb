require './email'
require 'sinatra'

get('/') do
	erb :signup
end

post('/signup') do  # creating user, send email.
	name = params[:name].capitalize
	email = params[:email].downcase
	puts params

send_email(name, email)  #passing name to function
	redirect "/welcome?name=#{name}"  #name param is equal to name

end


get('/welcome') do
		
		@name = params[:name].capitalize # @ makes name variable available in welcome template
		puts params
	erb :welcome #value added to welcome page
	
end 



	
	


	
