class Foodstuff < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :price
    validates :quantity
  end

  belongs_to :category 
  accepts_nested_attributes_for :category
  
end
