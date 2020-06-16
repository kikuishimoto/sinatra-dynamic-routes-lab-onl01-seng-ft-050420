require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @value = params[:number].to_i ** 2
    "#{@value}"
  end

  get '/say/:number/:phrase' do
    params[:number].to_i.time do params[:phrase]
  end

  # Write your code here!

end
