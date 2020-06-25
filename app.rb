require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :session_secret, 'flatiron'
  end
  get '/hello' do 
    erb :index
  end
  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    # erb :checkout
      
      # params
      # @session_hash = #key: item, value: the item the user entered to purchase 
  end
end

 