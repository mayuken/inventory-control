class AddNameTofoodstuffs < ActiveRecord::Migration[5.2]
  def change
    add_index :foodstuffs, :name, unique: true
  end
end
