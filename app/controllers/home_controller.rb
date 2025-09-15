class HomeController < ApplicationController
  def index
    @user = User.new  # フォーム用の新しいUserオブジェクト
  end

  def first_page
  end
end
