class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @organization = @user.organization
  end

  def new
  	@user = User.new
  	@organizations = Organization.all
  end
end