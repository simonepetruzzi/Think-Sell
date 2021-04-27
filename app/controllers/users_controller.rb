class UsersController < ApplicationController
  
  
  def show
    id = params[:id]
    
    if User.exists?(id)
      @user = User.find(id)
      @insertion = Insertion.where(user_id: id)
    end
  end

  def username
    return email.split("@")[0].capitalize
  end
  
end
