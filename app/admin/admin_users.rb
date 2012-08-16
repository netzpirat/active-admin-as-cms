ActiveAdmin.register AdminUser do
  menu label: 'Administrators', priority: 25

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  form do |f|
    f.inputs 'Admin Details' do
      f.input :email

      if !f.object.new_record?
        f.input :password, required: false
        f.input :password_confirmation, required: false
      end

      f.form_buffers.last
    end
    f.buttons
  end
end
