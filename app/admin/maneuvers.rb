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
      attributes_table_for maneuver, :name, :year
    end

    panel 'Customer' do
      attributes_table_for maneuver, :customer, :link
    end

    panel 'Details' do
      globalize_attributes_table_for maneuver do
        row :tagline
        row :services
        row :description do |p|
          BlueCloth.new(p.description).to_html.html_safe
        end
      end
    end

    panel 'Images' do
      maneuver.images.each do |i|
        div class: 'maneuver-image' do
          img src: i.image.url
          globalize_attributes_table_for i do
            row :label
          end
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
      f.input :year
    end

    f.inputs 'Customer' do
      f.input :customer
      f.input :link, as: :url
    end

    f.globalize_inputs :translations do |lf|
      lf.inputs 'Details' do
        lf.input :tagline
        lf.input :services
        lf.input :description
        lf.input :locale, :as => :hidden
      end
    end

    f.has_many :images do |i|
      i.inputs 'Image' do
        i.input :image_cache, as: :hidden

        i.input :image, {
          label: i.object.new_record? ? 'Upload new image' : 'Replace existing image',
          hint: i.object.image.url ? f.template.image_tag(i.object.image.url) : nil
        }

        i.globalize_inputs :translations do |li|
          li.inputs do
            li.input :label
            li.input :locale, :as => :hidden
          end
        end

        if !i.object.new_record?
          i.input :_destroy, as: :boolean, label: 'Destroy on next update'
        end

        i.form_buffers.last
      end
    end

    f.buttons
  end
end
