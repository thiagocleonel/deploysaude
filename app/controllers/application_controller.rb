class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, :devise_layout
  protect_from_forgery with: :exception


  def devise_layout
    @devise_layout = is_a?(Devise::SessionsController)
  end
end
