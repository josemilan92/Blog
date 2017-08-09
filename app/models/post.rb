class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category

  scope :published, ->{where status: true}

  mount_uploader :photo, ImageUploader
end
