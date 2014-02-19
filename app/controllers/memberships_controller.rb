class MembershipsController < ApplicationController
  before_action :signed_in_user

  def create
    @organization = Organization.find(params[:membership][:organization_id])
    current_user.join!(@organization)
    redirect_to @organization
  end
  
  def destroy
  end
  
  def edit
  end
  
  #all dat state shiz
=begin  
  def index
  	@membership = current.user.memberships.all
  end
  
  def accept
  	@organization = Organization.find(params[:id])
  	@membership = current_user.memberships.find(params[:id])
  	if @membership.accept!
  		flash[:success] = "They are now in your org!"
  	else
  		flash[:error] = "They are not invited!"
  	end
  	redirect_to @organization 
  end
  
  def edit
  	@membership = current_user.membership.f
  end
=end
end