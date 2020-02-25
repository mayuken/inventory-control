class AddCategoryIdToFoodstuffs < ActiveRecord::Migration[5.2]
  def change
    add_column :foodstuffs, :category_id, :integer
  end
end
