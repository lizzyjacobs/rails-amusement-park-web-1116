class SessionsController < ApplicationController

  def new

  end

  def create
    binding.pry
    if @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/sessions'
    else
      redirect_to '/'
    end
  end

  def index

  end

end
