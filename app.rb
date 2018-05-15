require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
  end

  get "/square/:number" do
    @num = params[:number]
    (@num.to_i**2).to_s

  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]

    string = ""

    num.times do
      string += phrase
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      num = num1 + num2
    elsif operation == "subtract"
      num = num1 - num2
    elsif operation == "divide"
      num = num1 / num2
    else operation == "multiply"
      num = num1 * num2
    end
    num.to_s
  end

end
