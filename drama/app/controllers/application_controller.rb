class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :admin_url

  def admin_url
    "13.125.53.10:3000"
  end
end
