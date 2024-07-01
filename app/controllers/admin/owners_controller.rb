class Admin::OwnersController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    @owners = Owner.page(params[:page])
  end
  
  
  def show
    @owner = Owner.find(params[:id])
  end
end
