require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

 post '/team' do
    @name = params.to_s["name"]
    @coach = params.to_s["coach"]
    @pg = params.to_s["pg"]
    @sg = params.to_s["sg"]
    @sf = params.to_s["sf"]
    @pf = params.to_s["pf"]
    @center = params.to_s["c"]

    erb :team
  end
end 