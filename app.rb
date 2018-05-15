require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].to_s.reverse
  end

  get "/square/:number" do
    @square = (params[:number].to_i * params[:number].to_i).to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @phrase * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    #binding.pry

    @operation = params[:operation]

    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
        "#{@number1 - @number2}"
    when "multiply"
        "#{@number1 * @number2}"
    when "divide"
        "#{@number1 / @number2}"
    end
  end

end
