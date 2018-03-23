class FavoritesController < ApplicationController
	#お気に入り登録用アクション
  def create
    @user_id = current_user.id #ログインしたユーザのID
    @museum_id = Museum.find(params[:id]).id #特定の本のID
    #book_idに@book_id、user_idに@user_idを入れて、Favoriteモデルに新しいオブジェクトを作る
    @favorite = Favorite.new(museum_id: @museum_id, user_id: @user_id)
    if @favorite.save
      #保存に成功した場合、本一覧画面に戻る
      redirect_to root_path
    end
  end

  #お気に入り削除用アクション
  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      #削除に成功した場合、ログインしているユーザの詳細画面に戻る
      redirect_to root_path
  end
end
end