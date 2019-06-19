require 'sinatra/base'

class DailyDiary < Sinatra::Base

get "/" do
  "Hello Daily Diary!"
end





 run! if app_file == $0
end
