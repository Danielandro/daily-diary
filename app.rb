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
  Diary.add_entry(title: @title, body: @body)
  erb :show_entry
  redirect "/"
end

get '/:id'
 run! if app_file == $0
end
