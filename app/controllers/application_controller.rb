class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :get_my_babies

  def get_my_babies
    @my_babies = current_user.babies if current_user
  end
end
