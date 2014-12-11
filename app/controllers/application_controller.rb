class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :babies_list_for_navbar

  # We use these babies for navbar
  def babies_list_for_navbar
    @my_babies = current_user.babies if current_user
  end
end
