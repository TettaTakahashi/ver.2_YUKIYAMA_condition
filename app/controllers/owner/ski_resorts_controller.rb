class Owner::SkiResortsController < ApplicationController
  before_action :authenticate_owner!
  before_action :only_current_owner, only: [:show, :edit, :update]
  
  
  
  def index
    @ski_resorts = SkiResort.all
  end
  
  
  def new
    
  end
  
end
