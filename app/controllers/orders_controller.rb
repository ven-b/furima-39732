class OrdersController < ApplicationController
  before_action :authenticate_user!, only: :index
  before_action :set_item, only: [:index, :create]

  def index
    @order_address = OrderAddress.new
    if current_user.id == @item.user_id
      redirect_to root_path
    end
    if Order.exists?(item_id: @item.id)
      redirect_to root_path
    end
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

private
  
  def order_params
    params.require(:order_address).permit(:postal_code, :area_id, :city, :street, :building_name, :phone_number).merge(user_id: current_user.id, item_id: @item.id )
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end