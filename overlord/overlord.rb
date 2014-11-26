# run `ruby overlord.rb` to run a webserver for this app
require "rubygems"
require "sinatra"
require "erb"
require "shotgun"
require_relative "bomb"

enable :sessions
set :port, 9393
set :bind, "0.0.0.0"

get "/" do
   bomb
   bomb_status
 end

post "/activate" do
  bomb
  code = params[:activation_code]
  bomb.activate(code) if code
  bomb_status
end

post "/deactivate" do
  bomb
  code = params[:deactivation_code]
  bomb.deactivate(code) if code
  bomb_status
end

private

def bomb_status
  if bomb.exploded?
    erb :exploded
  elsif bomb.active?
    erb :activated
  else
    erb :inactive
  end
end

def bomb
  session[:bomb] || Bomb.new
end