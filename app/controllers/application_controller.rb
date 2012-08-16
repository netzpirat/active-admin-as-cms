class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_locale

  def check_locale
    I18n.locale = params[:locale] if params[:locale]
    I18n.locale = I18n.default_locale unless I18n.available_locales.include?(I18n.locale)
  end
end
