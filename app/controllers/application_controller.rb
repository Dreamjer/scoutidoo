class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  
  def after_sign_out_path_for(resource_or_scope)
    groups_path
  end

  def after_sign_in_path_for(resource_or_scope)
    groups_path
  end


end
