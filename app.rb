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
    answer = ''
    params[:number].to_i.times do
      answer = answer + params[:phrase]
    end
    answer
  end

  # Write your code here!

end
