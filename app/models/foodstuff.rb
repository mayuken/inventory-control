class Foodstuff < ApplicationRecord

  with_options presence: true do
    validates :name, uniqueness: true
    validates :price
    validates :quantity
  end

  belongs_to :category 
  accepts_nested_attributes_for :category
  
  mount_uploader :image, ImageUploader
end
