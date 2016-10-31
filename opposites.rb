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

post('/welcome') do
	redirect "/quiz"
	@name = params[:name]
end

get ('/quiz') do
	erb :quiz

end 

post('/quiz') do
		q1 = params[:q1]
		q2 = params[:q2]
		q3 = params[:q3]
		q4 = params[:q4]
		q5 = params[:q5]
		puts q1
		puts q2
		puts q3
		puts q4
		puts q5
		# questions 1-5 get answers from quiz and store as vaiables.

end



	
	


	
