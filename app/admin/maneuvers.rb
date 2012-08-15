ActiveAdmin.register Maneuver do
  index do
    column :name
    column :customer
    column :year
    column :created_at
    default_actions
  end
end
