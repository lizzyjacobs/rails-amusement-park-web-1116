class SessionsController < ApplicationController

  def new

  end

  def create
    if @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # redirect_to signin_path
      redirect_to "/"
    end
  end

  def index

  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
