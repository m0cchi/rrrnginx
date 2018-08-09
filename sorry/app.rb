require 'sinatra'

set :environment, :production

get '*' do
  @host = request.host
  erb :sorry
end
