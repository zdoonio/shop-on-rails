class AccountController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(account_params)
      redirect_to account_show_path, notice: "Pomyślnie zaktualizowano profil"
    else
      render action: :show
    end
  end

  private
  def account_params
    params.require(:user).permit(
        :first_name,
        :last_name,
        :city,
        :zip_code,
        :street
    )
  end
end
