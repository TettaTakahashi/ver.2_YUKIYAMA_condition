class Owner::SkiResortsController < ApplicationController
  before_action :authenticate_owner!
  before_action :only_current_owner, only: [:show, :edit, :update]
  
  
  
  def index
    @ski_resorts = current_owner.ski_resorts
  end
  
  
  def new
    @ski_resort = SkiResort.new
  end
  
  
  def create
    @ski_resort = current_owner.ski_resorts.new(ski_resort_params)
    if @ski_resort.save
      redirect_to owners_ski_resorts_path
    else
      flash.now[:alert] = "全ての項目を入力してください"
      render :new
    end
  end
  
  
  def show
    @ski_resort = SkiResort.find(params[:id])
    @favorite_resorts_count = 0
    @favorite_resorts_count += @ski_resort.favorite_resorts.size
  end
  
  
  def edit
    
  end
  
  
  def update
    
  end
  
  
  def destroy
    
  end
  
  
  
  private
  
  def ski_resort_params
    params.require(:ski_resort).permit(:image, :name, :introduction, :sales_active, :snow_active, :waiting_time, :price, :road_condition, :weather, :prefecture_id)
  end
  
  
  def only_current_owner
    @ski_resort = SkiResort.find(params[:id])
    @owner = @ski_resort.owner
    redirect_to (owners_ski_resorts_path) unless @owner == current_owner
  end
end
