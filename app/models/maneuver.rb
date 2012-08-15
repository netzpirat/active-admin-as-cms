class Maneuver < ActiveRecord::Base

  has_many :images, :as => :imageable, :dependent => :destroy

  attr_accessible :customer, :description, :link, :name, :services, :tagline, :year, :images_attributes
  accepts_nested_attributes_for :images, allow_destroy: true

  validates_presence_of :customer, :description, :name, :services, :tagline, :year
  validates_numericality_of :year

end
