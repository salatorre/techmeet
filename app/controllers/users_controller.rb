class UsersController < ApplicationController
  def new
    @title = "New Member"
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Welcome to Techmeet"
      redirect_to @user
    else
      flash[:alert] = "User account has not been created."
      render :action => "new"
    end
  end
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
end
