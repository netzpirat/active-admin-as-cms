ActiveAdmin.register Person do
  index do
    column :firstname
    column :lastname
    column :email
    column :mobile

    column :created_at
    column :updated_at

    default_actions
  end

  show do |person|
    panel 'Person' do
      attributes_table_for person, :firstname, :lastname
    end

    panel 'Customer' do
      attributes_table_for person, :email, :mobile
    end

    panel 'Description' do
      globalize_attributes_table_for person do
        row :description do |p|
          BlueCloth.new(p.description).to_html.html_safe
        end
      end
    end

    panel 'Timestamps' do
      attributes_table_for person, :created_at, :updated_at
    end
  end

  form do |f|
    f.inputs 'Person' do
      f.input :firstname
      f.input :lastname
    end

    f.inputs 'Contact' do
      f.input :email
      f.input :mobile
    end

    f.globalize_inputs :translations do |lf|
      lf.inputs 'Description' do
        lf.input :description
        lf.input :locale, :as => :hidden
      end
    end

    f.buttons
  end
end
