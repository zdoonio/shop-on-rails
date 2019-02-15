require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'should validates presence' do
    record = Order.new
    record.valid?
    record.errors[:shipping_type].should include("musi istnieć")
  end

  it 'should count full cost' do
  order = Order.new(shipping_cost: 20)

  for i in 0..5
    order.line_items.new(unit_price: 2, quantity: 5)
  end

  order.full_cost.should eq(80.0)
  end
end
