class AddPeopleTranslation < ActiveRecord::Migration
  def up
    Person.create_translation_table!({
      description: :text,
    }, {
      migrate_data: true
    })
  end

  def down
    Person.drop_translation_table! migrate_data: true
  end
end
