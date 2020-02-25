class FoodstuffsController < ApplicationController

  def index
    @foodstuffs = Foodstuff.all

    @categories = Category.all
  end

  def new
    @foodstuff = Foodstuff.new
    @categories = Category.all
    @category = Category.new
  end

  def create
    Foodstuff.create(foodstuff_params)
    redirect_to root_path
  end

  def category_create
    Category.create(category_params)
    redirect_to new_foodstuff_path
  end

  private

  def foodstuff_params
    params.require(:foodstuff).permit(:name, :price, :image, :quantity, :capacity, :category_id)
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
