require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = PigLatinizer.new
        @user_phrase = phrase.piglatinize_word(params[:user_phrase])
        erb :piglatinize
    end
end