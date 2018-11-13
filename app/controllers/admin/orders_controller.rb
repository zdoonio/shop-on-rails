class Admin::OrdersController < Admin::BaseController
  def index
    @orders = Order.not_in_state(:new).page(params[:page]).per(20)
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.transition_to params[:state]
    redirect_to admin_orders_path(@order), notice: "Zmieniono stan zamówienia"
  end
end
