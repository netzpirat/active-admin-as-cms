class Image < ActiveRecord::Base

  belongs_to :imageable, :polymorphic => true

  attr_accessible :image, :image_cache, :label

  translates :label

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations

  mount_uploader :image, ImageUploader
end
