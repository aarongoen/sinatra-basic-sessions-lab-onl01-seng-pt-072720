require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set session_secret, "TU^Wm,Gsn/HgZY{L1ECxiK5gtsiqz8O~w'7Hig<>_'qKW,xWACpK`dIwN+g//(8"
    end

    get '/' do
        erb :'/index'
    end

    post '/checkout' do
        # binding.pry
        @session = session.merge!(params)
        @item = session["item"]
        @items = Item.all
        erb :'/checkout'
        end
end