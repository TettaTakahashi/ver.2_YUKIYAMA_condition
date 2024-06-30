class Admin::OwnersController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    @owners = Owner.page(params[:page])
  end
  
  
  def show
    
  end
end
