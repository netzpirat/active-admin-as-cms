ActiveAdmin.register Maneuver do
  index do
    column :name
    column :customer
    column :year

    column 'images' do |maneuver|
      maneuver.images.count
    end

    column :created_at
    column :updated_at

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
      maneuver.images.each do |i|
        img src: i.image.url
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
      i.inputs 'Image' do
        i.input :image_cache, as: :hidden

        i.input :image, {
          label: i.object.new_record? ? 'Upload new image' : 'Replace existing image',
          hint: i.object.image.url ? f.template.image_tag(i.object.image.url) : nil
        }

        i.input :label

        if !i.object.new_record?
          i.input :_destroy, as: :boolean, label: 'Destroy on next update'
        end

        i.form_buffers.last
      end
    end

    f.buttons
  end
end
