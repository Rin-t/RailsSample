class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "ユーザーを登録しました！"
    else
      redirect_to root_path, alert: "登録に失敗しました"
    end
  end

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "ユーザーを削除しました"
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
