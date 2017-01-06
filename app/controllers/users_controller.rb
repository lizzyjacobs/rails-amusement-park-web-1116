class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to "/"
    end
  end

  def show
    authenticate_user
    @user = User.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    current_user
    @ride = Ride.new(user_id: session[:user_id], attraction_id: @attraction.id) 
    flash[:notice] = @ride.take_ride
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :admin, :tickets, :password)
  end


end
