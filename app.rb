require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/' do
     erb :index
    end
   
    get '/new' do
    erb :create_puppy
    end

    post '/puppy' do
     @p_name = params[:name]
     @p_breed = params[:breed]
     @p_monthsold = params[:age].to_i
     @name = @p_name
     @breed = @p_breed
     @age = @p_monthsold
     erb :display_puppy
    end

end
