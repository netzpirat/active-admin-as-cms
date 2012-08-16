class Maneuver < ActiveRecord::Base

  has_many :images, :as => :imageable, :dependent => :destroy, :include => [:translations]

  translates :description, :services, :tagline

  attr_accessible :name, :year
  attr_accessible :customer, :link
  attr_accessible :tagline, :services, :description

  validates_presence_of :name, :year, :customer, :link, :tagline, :services, :description
  validates_numericality_of :year

  attr_accessible :images_attributes
  accepts_nested_attributes_for :images, allow_destroy: true

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
