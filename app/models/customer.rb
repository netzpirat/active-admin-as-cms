class Customer < ActiveRecord::Base
  attr_accessible :name, :link
  validates_presence_of :name
end
