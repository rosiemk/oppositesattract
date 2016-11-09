require './email'
require 'sinatra'

get('/') do
	erb :signup
end

post('/signup') do  # creating user, send email.
	@name = params[:name].capitalize
	@email = params[:email].downcase
	puts params
    redirect "/welcome?name=#{@name}&email=#{@email}"

end


get('/welcome') do
		
		@name = params[:name] # @makes name variable available in welcome template
		@email = params[:email]
		puts params
	erb :welcome #value added to welcome page
	
end 

post('/welcome') do
		@name = params[:name] # @ makes name variable available in welcome template
		@email = params[:email]
		puts params
	redirect "/quiz?name=#{@name}&email=#{@email}"
	#@name = params[:name]

end

get ('/quiz') do
	@name = params[:name] # @ makes name variable available in welcome template
	@email = params[:email]
	erb :quiz


end 

post('/quiz') do
		#@name = params[:name]
		q1 = params[:q1]
		#q2 = params[:q2]
		#q3 = params[:q3]
		#q4 = params[:q4]
		#q5 = params[:q5]
		#puts q1
		#puts q2
		#puts q3
		#puts q4
		#puts q5
		# questions 1-5 get answers from quiz and store as vaiables.

@name = params[:name]
@email = params[:email]


require 'csv'
CSV.open("opposites.csv", "ab") do |csv|
  csv << ["name","email","q1"]
  csv << [ @name , @email, q1 ]
end

#

#my_hash = { 
#	@name => q1
 # }

#puts my_hash[:name]

body = " Your name is #{@name} and your email is #{@email}.

You like #{q1}

You have been matched with

#{@name} and their email is #{@email}
 
 and they like #{q1}

Have fun!

"

send_email(@name, @email, body)  

redirect "/thankyou"

end

#@ instance variable- context of where it is $ is available everywhere and i cal pull it as i wish

get ('/thankyou') do

erb :thankyou
	
  #passing name to function
	  #name param is equal to 

end



	
	


	
