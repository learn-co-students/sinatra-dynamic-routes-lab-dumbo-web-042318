require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    @squared_num = num ** 2
    @squared_num.to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    arr = []
    n.times do
      arr << params[:phrase]
    end
    arr
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = 0
    if params[:operation] == "add"
      result = num1 + num2
    elsif params[:operation] == "subtract"
      result = num1 - num2
    elsif params[:operation] == "multiply"
      result = num1 * num2
    elsif  params[:operation] == "divide"
      result = num1 / num2
    end

    result.to_s
  end

end
