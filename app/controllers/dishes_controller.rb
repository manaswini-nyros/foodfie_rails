class DishesController < ApplicationController
	def index
	   @dishes=Dish.all
  end
  def create
    @dishes = Dish.search(params[:search]).order(sort_column + " " + sort_direction)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end
  
  def search
 @dishes =  Dish.where('name LIKE ?',"%#{params[:search]}%")
     @all_dishes_count =  @dishes.count :all
   
    if params[:filter]
      @dishes = Dish.order(params[:filter]).where('name LIKE ?',"%#{params[:search]}%")
    elsif params[:rating]
      @dishes= Dish.where('rating > ? ', params[:rating]).where('name LIKE ?',"%#{params[:search]}%")
    elsif params[:tags]
      @dishes = Dish.where('tag_id LIKE ?',params[:tags]).where('name LIKE ?',"%#{params[:search]}%")
    respond_to do|format|
      format.html
      format.js
    end	
  end
  def dish_params
  params.require(:dish).permit(:id, :name, :price ,:filter, :image ,:tag_id ,:tag_name, :search,:restaurant_address) 
  end
end
end