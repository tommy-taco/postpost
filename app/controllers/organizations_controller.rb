class OrganizationsController < ApplicationController
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
  end
  
  private
  	
  	def org_params
 		params.require(:organization).permit(:name)
    end
end
