require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissor < Sinatra::Base
	set :views, Proc.new {File.join(root, '..', 'views')}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  enable :sessions
  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/' do
  	session[:name] = params[:player_name]
    @player = session[:name]
    GAME.player = Player.new(@player)
    puts GAME.inspect
    erb :index
  end

  post '/game' do
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/winner' do
    GAME.player.weapon = params[:weapon]
    
    erb :winner
    puts GAME.inspect
    redirect '/winner'
  end

  get '/winner' do 
    @weapon = GAME.player.weapon
    @winner = GAME.result
    @computer = GAME.computer
    erb :winner
  end

  run! if app_file == $0
end
