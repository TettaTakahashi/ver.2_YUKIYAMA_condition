class Admin::PrefecturesController < ApplicationController
  before_action :authenticate_admin!
  
  
  def index
    @prefectures = Prefecture.all
    @prefecture = Prefecture.new
  end
  
  
  def create
    @prefecture = Prefecture.new(prefecture_params)
    if @prefecture.save
      redirect_to admin_prefectures_path
    else
      @prefectures=Prefecture.all
      redirect_to admin_prefectures_path
    end
  end
  
  
  
  private
  
  def prefecture_params
    params.require(:prefecture).permit(:prefecture_name)
  end
  
end
