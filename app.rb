require_relative 'config/environment'
require_relative 'models/puppy.rb'
require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params['name'], params['breed'], params['months_old'])
    erb :display_puppy
  end

end
