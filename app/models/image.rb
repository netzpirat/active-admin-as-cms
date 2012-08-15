class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  mount_uploader :image, ImageUploader

  attr_accessible :image, :image_cache
end
