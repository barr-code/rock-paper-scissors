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
    if !GAME.has_players?
      GAME.player1 = Player.new(session[:name])
    elsif GAME.player1
      GAME.player2 = Player.new(session[:name])
    elsif GAME.has_two_players?
      'There are already two players.'
    end
    puts GAME.inspect
    erb :index
  end

  post '/game' do
    @player = session[:name]
  	erb :game
  end

  post '/winner' do


  end

  run! if app_file == $0
end
