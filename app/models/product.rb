class Product < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  belongs_to :category
  has_many :line_items, dependent: :destroy

  mount_uploader :image, ProductImageUploader

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
