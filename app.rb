require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post "/names" do
    @player01 = params[:player01]
    @player02 = params[:player02]
    erb :play
  end

  run! if app_file == $0

end
