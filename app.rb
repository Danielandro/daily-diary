require 'sinatra/base'

class DailyDiary < Sinatra::Base 

get "/" do
  "Hello Daily Diary!"
end

get '/add_entry' do
  erb :add_entry
end

post '/show_entry' do
  @title = params[:title]
  @body = params[:body]
  erb :show_entry
end

 run! if app_file == $0
end
