# run `ruby overlord.rb` to run a webserver for this app
require "rubygems"
require "sinatra"
require "erb"
require "shotgun"
require_relative "bomb"

def bomb
  session[:bomb] ||= Bomb.new
end

def pending_name(options)
  options[:]
  code = options
  if code
  @bomb = bomb
  bomb.activate(code)
  @bomb = session[:bomb]
end

enable :sessions
set :port, 9393
set :bind, "0.0.0.0"

get "/" do
  @bomb = bomb
  erb :inactive
end

post "/activate" do
   pending_name(params[:activation_code])
    if bomb.active?
      erb :activated
    else
      erb :inactive
    end
  else
    @bomb = bomb
    erb :inactive
  end
end

post "/deactivate" do
    pending_name(params[:deactivation_code])
    if bomb.exploded?
      erb :exploded
    elsif !bomb.active
      erb :inactive
    else
      erb :activated
    end
    else
      @bomb = bomb
      erb :activated
  end
end

