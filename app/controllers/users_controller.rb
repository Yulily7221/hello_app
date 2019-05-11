class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

 def signup
   @user = User.new
 end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      render(index_path)
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

end
