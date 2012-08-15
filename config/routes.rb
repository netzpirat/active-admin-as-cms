VareseCorridor::Application.routes.draw do
  match '/office', to: 'office#index'
  match '/maneuver', to: 'maneuver#index'

  root to: 'home#index'
end

ActionDispatch::Routing::Translator.translate_from_file(File.join('config', 'locales', 'routes.yml'), {
  prefix_on_default_locale: true,
  keep_untranslated_routes: true
})

VareseCorridor::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
