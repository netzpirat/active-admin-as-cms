class CompanyDescription < ActiveRecord::Base
  has_many :company_description_details, dependent: :destroy

  translates :title, :description

  attr_accessible :company_id, :title, :description

  attr_accessible :company_description_details_attributes
  accepts_nested_attributes_for :company_description_details, allow_destroy: true

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
