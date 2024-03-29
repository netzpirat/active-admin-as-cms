class Company < ActiveRecord::Base
  has_many :company_descriptions, dependent: :destroy, include: [:image, :translations, :company_description_details]

  attr_accessible :name, :street, :zip, :city, :phone, :email, :web

  attr_accessible :company_descriptions_attributes
  accepts_nested_attributes_for :company_descriptions, allow_destroy: true
end
