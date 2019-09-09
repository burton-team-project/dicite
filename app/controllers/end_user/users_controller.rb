class EndUser::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(current_user.id)
    @orders = Order.where(user_id: current_user.id)
    @favorites = Favorite.where(user_id: current_user.id)
  end

  def unsubscribe
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  def complete
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_kana_name, :first_kana_name, :postal_code, :postcode, :prefecture_name, :address_city, :address_street, :address_building, :phone, :email)
  end
end
