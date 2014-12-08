class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
      if @user.save
       redirect_to(:action => 'index')
      else
       render('new')
     end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
     if @user.update_attributes(user_params)
      redirect_to(:action => 'show', :id => @user.id)
    else
      render('index')
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  def user_params
    params.require(:user).permit()
  end
end
