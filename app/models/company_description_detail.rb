class CompanyDescriptionDetail < ActiveRecord::Base
  attr_accessible :company_description_id, :title, :description

  translates :title, :description

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
