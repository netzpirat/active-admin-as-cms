class Maneuver < ActiveRecord::Base
  attr_accessible :customer, :description, :link, :name, :services, :tagline, :year

  validates_presence_of :customer, :description, :link, :name, :services, :tagline, :year
  validates_numericality_of :year
  validates_format_of :link, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
end
