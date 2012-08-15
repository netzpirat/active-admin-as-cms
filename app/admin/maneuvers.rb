ActiveAdmin.register Maneuver do
  index do
    column :name
    column :customer
    column :year
    column :created_at
    default_actions
  end

  show do |maneuver|
    panel 'Maneuver' do
      attributes_table_for maneuver, :name, :tagline, :year
    end

    panel 'Customer' do
      attributes_table_for maneuver, :customer, :link
    end

    panel 'Details' do
      attributes_table_for maneuver, :services, :description
    end

    panel 'Images' do
      table_for(maneuver.images) do
        column do  |i|
          image_tag(i.image.url)
        end
      end
    end

    panel 'Timestamps' do
      attributes_table_for maneuver, :created_at, :updated_at
    end
  end

  form do |f|

    f.inputs 'Maneuver' do
      f.input :name
      f.input :tagline
      f.input :year
    end

    f.inputs 'Customer' do
      f.input :customer
      f.input :link, as: :url
    end

    f.inputs 'Details' do
      f.input :services
      f.input :description
    end

    f.has_many :images do |i|
      i.inputs 'Images' do
        i.input :image_cache, as: :hidden
        if i.object.new_record?
          i.input :image, label: 'Upload new image', :hint => i.object.image.url ? f.template.image_tag(i.object.image.url) : nil
        else
          i.input :image, label: 'Replace existing image', :hint => i.object.image.url ? f.template.image_tag(i.object.image.url) : nil
          i.input :_destroy, as: :boolean
        end
      end
    end

    f.buttons
  end
end
