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

    @puppy = Puppy.new("#{params[:name]}", "#{params[:breed]}", "#{params[:age]}")

    @puppy_info = ["Name: #{params[:name]}","Breed: #{params[:breed]}"]
    erb :display_puppy
  end

end
