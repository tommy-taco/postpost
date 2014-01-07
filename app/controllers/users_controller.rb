class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @organization = @user.organization
  end

  def new
   	@user = User.new
   	@organizations = Organization.all
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the PostPost!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
 		params.require(:user).permit(:name,:email, :password,
  									:password_confirmation,:organization_id)
    end
end