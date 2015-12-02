class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  mount_uploader :image, CategoryImageUploader

  has_many :products
end
