class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    @customers = Customer.page(params[:page]).per(20)
  end
  
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  
  def edit
    
  end
end
