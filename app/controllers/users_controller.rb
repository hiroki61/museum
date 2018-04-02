class UsersController < ApplicationController

	before_action :authenticate_user!

  def show
  	@user = User.find(params[:id])
    #特定のユーザーが登録したお気に入りを全て取得する
    @favorites = Favorite.where("user_id = ?", @user)
  end

  def edit
  end
  
  private
    def authenticate_user!
      # 認証処理をする
      # 認証に失敗したらログインページにリダイレクトする
    end
end
