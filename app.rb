require 'sinatra/base'
require './lib/fighter'
require './lib/game'

class Battle < Sinatra::Base

  #start the game
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new Fighter.new(params[:player_1_name]), Fighter.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  #attacking
  get '/attack' do
    $game.attack($game.player_2)
    @game = $game
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
