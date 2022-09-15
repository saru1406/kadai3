class UsersController < ApplicationController
  def edit
  end

  def show
   @books = @user.post_images   
  end
  
  def index
    @users = User.all
    
  end
  
end
