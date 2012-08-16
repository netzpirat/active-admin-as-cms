ActiveAdmin.register Company do
  menu false
  actions :show, :edit, :update

  show do |company|
    panel 'Company' do
      attributes_table_for company, :name, :street, :zip, :city
    end

    panel 'Contact' do
      attributes_table_for company, :phone, :email, :web
    end

    company.company_descriptions.each do |description|
      panel 'Description' do
        globalize_attributes_table_for description do
          row :title
          row :description do |d|
            BlueCloth.new(d.description).to_html.html_safe
          end
        end

        description.company_description_details.each do |detail|
          panel 'Detail' do
            globalize_attributes_table_for detail do
              row :title
              row :description do |d|
                BlueCloth.new(d.description).to_html.html_safe
              end
            end
          end
        end
      end
    end
  end

  form do |f|
    f.inputs 'Company' do
      f.input :name
      f.input :street
      f.input :zip
      f.input :city
    end

    f.inputs 'Contact' do
      f.input :phone
      f.input :email
      f.input :web
    end

    f.has_many :company_descriptions do |desc|
      desc.inputs 'Description' do
        desc.globalize_inputs :translations do |li|
          li.inputs do
            li.input :title
            li.input :description
            li.input :locale, :as => :hidden
          end
        end

        if !desc.object.new_record?
          desc.input :_destroy, as: :boolean, label: 'Destroy on next update'
        end

        desc.has_many :company_description_details do |detail|
          detail.inputs 'Details' do
            detail.globalize_inputs :translations do |li|
              li.inputs do
                li.input :title
                li.input :description
                li.input :locale, :as => :hidden
              end
            end

            if !detail.object.new_record?
              detail.input :_destroy, as: :boolean, label: 'Destroy on next update'
            end

            detail.form_buffers.last
          end
        end

        desc.form_buffers.last
      end
    end

    f.buttons
  end

end
