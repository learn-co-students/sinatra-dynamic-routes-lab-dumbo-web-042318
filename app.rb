require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end 

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase_array = params[:phrase].split("%20")
    
   
    "#{@phrase_array.join(" ") * @num}"

  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_array = params.inject(Array.new) do |accumulator, (k, v)|
        accumulator << v
        accumulator
    end
    "#{@word_array.join(" ")}."
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "multiply"
        "#{@num1 * @num2}"
      when "divide"
        "#{@num1 / @num2}"
    end 
  end 
end