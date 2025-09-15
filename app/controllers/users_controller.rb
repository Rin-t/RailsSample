class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_index_path, notice: "ユーザーを登録しました！"
    else
      redirect_to root_path, alert: "登録に失敗しました"
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
