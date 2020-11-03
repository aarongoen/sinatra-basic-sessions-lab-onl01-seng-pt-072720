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
        @sessions = session
        item = params[:item]
        @sessions[:item] = item

        @Items = Item.all

        erb :'/checkout'
        end
end