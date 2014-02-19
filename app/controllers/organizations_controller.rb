class OrganizationsController < ApplicationController
	before_action :signed_in_user
	before_action :admin_user,     only: :destroy	


  def new
  	@organization = Organization.new
  end
  
  def create
    @organization = Organization.new(org_params)
    if @organization.save
      flash[:success] = "Start Creating Your Network"
      redirect_to @organization
    else
      render 'new'
    end
  end
  
  def show
  	@organization = Organization.find(params[:id])
  	@members = @organization.members.paginate(page: params[:page])
  end
  
  def edit
    @organization = Organization.find(params[:id])
  end
  
  def update
    @organization = Organization.find(params[:id])
    if @organization.update_attributes(org_params)
      flash[:success] = "Network updated"
      redirect_to @organization
    else
      render 'edit'
    end
  end
  
  def destroy
  	@organization = Organization.find(params[:id])
    Organization.find(params[:id]).destroy
    flash[:success] = "Organization deleted."
    redirect_to root_path
  end
  
  def members
  	@organization = Organization.find(params[:id])
  	@memberships = @organization.memberships
  	@members = @organization.members.paginate(page: params[:page])
  	
  end
  
  def requests
  end
  
  private
  	
  	def org_params
 		params.require(:organization).permit(:name)
    end
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
