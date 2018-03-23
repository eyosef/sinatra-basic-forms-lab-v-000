require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display' do

    "#{params[:name]}"
    "#{params[:breed]}"
    "#{params[:age]}"

    @puppy = Puppy.new(name, breed, age)

    erb :display_puppy
  end

end
