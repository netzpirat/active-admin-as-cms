class Customer < ActiveRecord::Base
  attr_accessible :name, :link
  validates_presence_of :name

  scope :recent, lambda{ |num| order('created_at desc').limit(num) }
end
