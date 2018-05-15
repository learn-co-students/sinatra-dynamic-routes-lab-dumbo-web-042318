require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    params[:name].reverse
  end
    
  get "/square/:number" do
    num = params[:number].to_i
    "#{num ** 2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]

    array = []
    number.times do
      array << phrase + " "
    end

    array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    params.each do |key, value|
      arr << value
    end

    arr.join(" ") + "."

  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    
    if operation == "add" 
      num1 += num2
      num1.to_s
    elsif operation == "subtract"
      num1 -= num2
      num1.to_s
    elsif operation == "multiply"
      num1 *= num2
      num1.to_s
    elsif operation == "divide"
      num1 /= num2
      num1.to_s
    end
  end
    
end