require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "hello there"
  end 

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end 

  get '/say/:number/:phrase' do
    # CHECK YOUR GODDAMN TYPES IDIOT 
    num = params[:number]
    phrase = params[:phrase]
    phrase * num.to_i  
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.map {|k, word| word}.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    op_code = params[:operation]
    case op_code 
      when "add"
         "#{params[:number1].to_i + params[:number2].to_i}"
      when "subtract" 
         "#{params[:number1].to_i - params[:number2].to_i}"
      when "multiply"
         "#{params[:number1].to_i * params[:number2].to_i}"
      when "divide"
         "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end
