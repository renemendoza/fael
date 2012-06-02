class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
