require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set session_secret, "secret"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
       @items = "text test"
        # c = a.merge(b)
        
        session.merge(params)
        params["item"] = 
        @session = session
        # params["item"] = 
        # @session = session.merge!(params)
        @session["item"] = params[:item]
        # # @items = Item.all"
        erb :checkout
        end
end