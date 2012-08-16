class AddCompanyTranslations < ActiveRecord::Migration
  def up
    CompanyDescription.create_translation_table!({
      title: :string,
      description: :text
    }, {
      migrate_data: true
    })
    CompanyDescriptionDetail.create_translation_table!({
      title: :string,
      description: :text
    }, {
      migrate_data: true
    })
  end

  def down
    CompanyDescription.drop_translation_table! migrate_data: true
    CompanyDescriptionDetail.drop_translation_table! migrate_data: true
  end
end
