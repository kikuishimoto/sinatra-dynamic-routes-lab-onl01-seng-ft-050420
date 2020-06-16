require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do 
    params[:name].to_i ** 2
  end 

  # Write your code here!

end
