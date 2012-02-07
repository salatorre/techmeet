class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new
    @user.save
    flash[:notice] = "Welcome to Techmeet"
    redirect_to @user
  end
end
