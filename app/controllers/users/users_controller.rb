class Users::UsersController < ApplicationController
  
  def show
    @user = current_user
  end
  
  def unsubscribe
  end
  
  def withdraw
    
  end
  
end
