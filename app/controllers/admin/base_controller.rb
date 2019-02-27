class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate

  def authenticate
    authenticate_user!
    unless current_user.admin?
      to_root
    end
  end

  def to_root
    flash[:alert] = "Brak uprawnień"
    redirect_to root_path
  end
end
