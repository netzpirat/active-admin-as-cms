class Person < ActiveRecord::Base

  translates :description

  attr_accessible :firstname, :lastname, :email, :mobile
  attr_accessible :description

  validates_presence_of :firstname, :lastname, :email, :mobile

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
