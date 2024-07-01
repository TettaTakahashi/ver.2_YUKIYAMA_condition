class Admin::OwnersController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    @owners = Owner.page(params[:page])
  end
  
  
  def show
    @owner = Owner.find(params[:id])
  end
  
  
  def edit
    @owner = Owner.find(params[:id])
  end
  
  
  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to admin_owner_path(@owner)
  end
  
  
  
  private
  
  def owner_params
    params.require(:owner).permit(:owner_name, :email)
  end
end
