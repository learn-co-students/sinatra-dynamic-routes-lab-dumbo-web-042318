require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    case params[:operation]
    when "add"
      (@num1.to_i + @num2.to_i).to_s
    when "subtract"
      (@num1.to_i - @num2.to_i).to_s
    when "multiply"
      (@num1.to_i * @num2.to_i).to_s
    when "divide"
      (@num1.to_i / @num2.to_i).to_s
    end
  end


end
