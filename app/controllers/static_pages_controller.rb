class StaticPagesController < ApplicationController
  def home
  	if signed_in?
      @users = User.paginate(page: params[:page], :per_page => 8)
    end
  end

  def about
  end

  def contact
  end
end
