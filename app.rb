require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
  	@name = params[:name]
  	"#{@name.split('').reverse.join}"
  end

  get '/square/:number' do
  	@number = params[:number]
  	"#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
  	@number = params[:number]
  	@phrase = params[:phrase]
  	final = ""
  	@number.to_i.times do
  		final += "#{@phrase}\n"
  	end
  	final
  end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		case params[:operation]
			when "add"
				final = @num1 + @num2
			when "subtract"
				final = @num1 - @num2
			when "multiply"
				final = @num1 * @num2
			when "divide"
				final = @num1 / @num2
			else 
				final = "Can't do that operation"
			end
			final.to_s
	end

end