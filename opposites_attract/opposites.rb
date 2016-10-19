require 'sinatra'

get('/') do
	erb :opposites
end

get('/:name') do
	@name = params[:name].capitalize
	erb :opposites
end