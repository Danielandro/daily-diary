require 'sinatra/base'

class DailyDiary < Sinatra::Base 
  enable :sessions

  get "/" do    
    @title = session[:title]
    @body = session[:body]
    erb :index
  end

  get '/add_entry' do
    erb :add_entry
  end

  post '/show_entry' do    
    session[:title] = params[:title]
    session[:body] = params[:body]     
    # Diary.add_entry(title: @title, body: @body)
    erb :show_entry
    redirect "/"
  end
  
  run! if app_file == $0
  
end