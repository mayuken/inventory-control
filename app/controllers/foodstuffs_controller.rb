class FoodstuffsController < ApplicationController

  def index
    @foodstuffs = Foodstuff.all
    @categories = Category.all
  end

  def new
    @foodstuff = Foodstuff.new
    @categories = Category.all
    @category = Category.new
    @parents = Category.all.order("id ASC")
  end

  def create
    @foodstuff = Foodstuff.new(foodstuff_params)
    if @foodstuff.save
      flash[:notice] = "食材が追加されました！"
      redirect_to root_path
    else
      flash[:alert] = "食材追加に失敗しました…。"
      redirect_to new_foodstuff_path
    end

  end

  def category_create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "カテゴリーが追加されました！"
      redirect_to new_foodstuff_path
    else
      flash[:alert] = "カテゴリー追加に失敗しました…。"
      redirect_to new_foodstuff_path
    end
    
  end

  def edit
  end


  private

  def foodstuff_params
    params.require(:foodstuff).permit(:name, :price, :image, :quantity, :capacity, :category_id)
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
