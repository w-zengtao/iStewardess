class Api::V1::ResetPasswordsController < ApplicationController
  respond_to :json
  
  def index
    # TODO 配置好发件服务器
    # TODO 配置好重置的连接地址
    reset_password_token = User.find_by(email: params[:email]).send_reset_password_instructions
    render json: { email: params[:email], reset_password_token: reset_password_token }
  
  end
  
  def new
    @user = User.find_by(email: params[:email])
    reset_password_token = params[:reset_password_token]
    
  end
end
