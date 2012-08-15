class ApplicationController < ActionController::Base
  protect_from_forgery

  AVAILABLE_LOCALES = [:en, :de]

  before_filter :check_locale

  def check_locale
    I18n.locale = I18n.default_locale unless AVAILABLE_LOCALES.include?(I18n.locale)
  end
end
