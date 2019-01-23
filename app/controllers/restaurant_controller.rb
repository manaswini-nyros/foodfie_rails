class RestaurantController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
  end
  def item_params
  params.require(:restaurant).permit(:name, :address , :image) # Add :picture as a permitted parameter
end
end
