class Image < ActiveRecord::Base

  belongs_to :imageable, :polymorphic => true

  attr_accessible :image, :image_cache, :label

  mount_uploader :image, ImageUploader
end
