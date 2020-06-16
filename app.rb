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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # Write your code here!

end
