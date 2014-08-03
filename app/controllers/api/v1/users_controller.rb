class Api::V1::UsersController < ApplicationController
  
  respond_to :json
  
  def show
    @user = User.find(params[:id])
    render status: 200, json: { user: @user }
  end
  
  def index
    @users = User.all
    render status: 200, json: { users: @users }
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      render status: :created, message: "created success", json: { user: @user }
    else
      render status: 400, message: "save failed", json: { user: @user }
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password, :name, :avatar)
  end
  
end
