class UsersController < ApplicationController
  def index
    @title = "Member list"
    @users = User.all
  end
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
  def edit
    @user = User.find(params[:id])
    @title = "Edit account"
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice]="Account has been updated"
      redirect_to @account
    else
      flash[:alert]="Account has not been updated"
      render 'edit'
    end
  end
end
