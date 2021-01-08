require 'sinatra'
require_relative 'database_connection'

require_relative './lib/space.rb'
require_relative './lib/user.rb'
require_relative './lib/booking.rb'
require_relative './lib/owner.rb'


class MakersBnb < Sinatra::Base
  set :session_secret, 'super secret'

  enable :sessions

  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup/new' do
    User.create(params[:user])
    redirect '/login'
  end

  get '/owner/signup' do
    erb :owner_signup
  end

  post '/owner/new' do
    owner = Owner.create(params[:owner])
    session[:owner_id] = owner.id
    redirect "/owner/#{owner.id}"
  end

  get '/owner/login' do
    erb :owner_login
  end

  post '/owner/login/new' do
    owner = Owner.find_by(username: params[:username])&.authenticate(params[:password])
    session[:owner_id] = owner.id
    redirect "/owner/#{owner.id}"
  end

  get '/owner/:id' do
    erb :owner_space
  end

  get '/login' do
    erb :login
  end

  get '/spaces/new' do
    erb :spaces_new
  end

  post '/space/save' do
    Space.create(params[:space])
    redirect '/spaces'
  end

  get '/spaces' do
    erb :spaces
  end

  get '/space/:id/reserve' do
    @space = Space.find(params[:id])
    @space.update(available: FALSE)
    erb :reserve
  end

  post '/space/:id/confirm' do
    @booking = Booking.create(params[:booking])
    redirect "/booking/#{@booking.id}/confirmation"
  end

  get '/booking/:id/confirmation' do
    @booking = Booking.find(params[:id])
    erb :confirm_booking
  end
end
