require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @reversed = @user_name.reverse
     # binding.pry
    @reversed
  end

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    # binding.pry
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    # binding.pry

    # @number.to_i.times do
    #   @phrase
    # end
     @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = 0

    if @operation == "add"
      # puts "add"
      @result = @num1 + @num2
    elsif @operation == "subtract"
      @result = @num1 - @num2
      # puts "subtract"
    elsif @operation == "multiply"
      @result = @num1 * @num2
      # puts "multiply"
    else
      @result = @num1 / @num2
      # puts "divide"
    end
    # binding.pry
    @result.to_s
  end

end
