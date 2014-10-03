require 'sinatra/base'

class RockPaperScissor < Sinatra::Base
	set :views, Proc.new {File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  post '/game' do
  	@player = params[:player_name]
  	erb :game
  end

  run! if app_file == $0
end
