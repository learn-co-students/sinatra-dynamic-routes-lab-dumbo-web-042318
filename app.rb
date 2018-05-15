require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    (@number.to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @phrase_amt =''

    (@num.to_i).times do
      @phrase_amt += ' '+@phrase
    end
    @phrase_amt.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase_amt =' '+@word1+' '+@word2+' '+@word3+' '+@word4+' '+@word5+'.'
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
    when "add"
      answer = number1 + number2
    when "subtract"
      answer = number1 - number2
    when "multiply"
      answer = number1 * number2
    when "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end
