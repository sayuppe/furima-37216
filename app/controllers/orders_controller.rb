class OrdersController < ApplicationController

  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
  end

  private

  def order_params
    params.require(:order_address).permit(:post_code, :prefecture_id, :city, :address, :building_name, :phone_number)merge(user_id: current_user.id, item_id: params[:item_id],token: params[:token])
  end
  

end
