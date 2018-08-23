require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post "/names" do
    # session[:player01] = params[:player01]
    # session[:player02] = params[:player02]
    $player01 = Player.new(params[:player01]).name
    $player02 = Player.new(params[:player02]).name
    redirect "/play"
  end

  get "/play" do
    @player01 = $player01
    @player02 = $player02 
    erb :play
  end

  get "/attack" do
    @player01 = $player01
    @player02 = $player02 
    erb :attack
  end

  run! if app_file == $0

end
