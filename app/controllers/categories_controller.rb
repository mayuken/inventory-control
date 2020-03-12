class CategoriesController < ApplicationController

  def new
    @category = Categories.new
  end

  def create
  end

  def category_create_edit
    @category_id = Foodstuff.find(params[:id])
    @category = Category.new(category_params_edit)
    if @category.save
      flash[:notice] = "カテゴリーが追加されました！"
      redirect_to edit_foodstuff_path(@category_id)
    else
      flash[:alert] = "カテゴリー追加に失敗しました…。"
      redirect_to edit_foodstuff_path(@category_id)
    end
  end

  def category_destroy
    checked_data = params[:deletes].keys # ここでcheckされたデータを受け取っています。
    if Category.destroy(checked_data)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private

  def category_params_edit
    params.require(:category).permit(:name)
  end
  
end
