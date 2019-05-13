require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye' do
    "seeing if this is necessary for \'\/goodbye\/:name\' to work"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply" do
    "yeah i guess these are necessary"
  end

  get "/multiply/:num1/:num2" do
    @number1 = params[:num1].to_i
    @number2 = params[:num2].to_i
    prod = @number1 * @number2
    "#{prod}"
  end
end
