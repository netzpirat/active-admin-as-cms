class CreateTranslationTables < ActiveRecord::Migration
  def up
    Maneuver.create_translation_table!({
      description: :text,
      services: :string,
      tagline: :string
    }, {
      migrate_data: true
    })

    Image.create_translation_table!({
      label: :string,
    }, {
      migrate_data: true
    })
  end

  def down
    Maneuver.drop_translation_table! migrate_data: true
    Image.drop_translation_table! migrate_data: true
  end
end
