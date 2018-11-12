class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart

  def current_cart
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
  end

  def current_cart_or_create
    cart = current_cart
    if cart.new_record?
      cart.save
      session[:order_id] = cart.id
    end
    cart
  end
end
