class Category < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  mount_uploader :image, CategoryImageUploader
end
