require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse 
  end 

  get '/square/:number' do 
    squared_num = params[:number].to_i ** 2
    squared_num.to_s
  end 

  get '/say/:number/:phrase' do
    saying = ''
    number = params[:number].to_i
    phrase = params[:phrase]

    number.times do
      saying += phrase
    end
    saying
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    number1 = params[:number].to_i
    number2 = params[:number].to_i 

    if params[:operation] == 'add'
     sum = params[:number1].to_i + params[:number2].to_i
     sum.to_s
 
    elsif params[:operation] == 'subtract'
     sum = params[:number1].to_i - params[:number2].to_i
     sum.to_s
 
    elsif params[:operation] == 'multiply'
     sum = params[:number1].to_i * params[:number2].to_i
     sum.to_s
 
    elsif params[:operation] == 'divide'
     sum = params[:number1].to_i / params[:number2].to_i
     sum.to_s
    end
   end

end