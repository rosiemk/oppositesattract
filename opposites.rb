require 'sinatra'

get('/') do
	erb :signup
end

post('/signup') do
	@name = params[:name].capitalize

	puts params

	erb :welcome  # change this page to the page where the next values will go.

end


