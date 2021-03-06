class Users::UsersController < ApplicationController
  
  def show
    @user = current_user
  end
  
  def unsubscribe
  end
  
  def withdraw
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end
  
end
