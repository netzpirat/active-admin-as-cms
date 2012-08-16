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
        attributes_table_for description, :title, :description

        description.company_description_details.each do |detail|
          panel 'Detail' do
            attributes_table_for detail, :title, :description
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
        desc.input :title
        desc.input :description

        if !desc.object.new_record?
          desc.input :_destroy, as: :boolean, label: 'Destroy on next update'
        end

        desc.has_many :company_description_details do |detail|
          detail.inputs 'Details' do
            detail.input :title
            detail.input :description

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
