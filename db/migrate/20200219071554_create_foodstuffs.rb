class CreateFoodstuffs < ActiveRecord::Migration[5.2]
  def change
    create_table :foodstuffs do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.integer :capacity
      t.integer :quantity
      t.timestamps
    end
  end
end
