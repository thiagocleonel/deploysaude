class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, :devise_layout, :set_presentation_name
  protect_from_forgery with: :exception

  def set_presentation_name
      @presentation_name = current_user.name || current_user.email if current_user
  end

  def devise_layout
    @devise_layout = is_a?(Devise::SessionsController)
  end
end
