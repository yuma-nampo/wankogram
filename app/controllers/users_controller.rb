class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if  @user != current_user
      redirect_to user_path, alert: "不正なアクセスです。"
    end
  end
  
  def update
   @user = User.find(params[:id])
   @user.update(user_params)
   redirect_to user_path(@user), notice: "更新できました。"
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :profile, :profile_image)
  end
end
