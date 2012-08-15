class HomeController < ApplicationController

  def index
    unless params[ :locale]
      redirect_to eval("root_#{ I18n.locale }_path")
    end

  end
end

