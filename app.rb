require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]

    @reverse_name = @name.reverse

  end

  get '/square/:number' do
    @num = params[:number]

    @squared = @num.to_i * @num.to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]

    @result = "#{@phrase}"*(@num.to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    # @result = @word1 + " " + @word2 + " "+ @word3 + " " + @word4 + " " + @word5

    @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @result = 0

      if @operation == "add"
        @result = @num1 + @num2
      elsif @operation == "subtract"
        @result = @num1 - @num2
      elsif @operation == "multiply"
        @result = @num1 * @num2
      else
        @result = @num1 / @num2
      end
      @result.to_s
    end







end
