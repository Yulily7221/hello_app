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
    p "====================="
    p params
    p "====================="
    @user = User.new(user_params)
    if @user.save
      redirect_to show_path
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end

end
