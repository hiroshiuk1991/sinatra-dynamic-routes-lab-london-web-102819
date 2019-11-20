require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @username = params[:name]
    "#{@username}".reverse 
  end 

  get 'square/:number' do
    @number = params[:number]
    @result = @number.to_i.sqrt
    "#{@result}"
  end 

end