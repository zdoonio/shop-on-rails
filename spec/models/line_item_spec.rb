require 'rails_helper'

RSpec.describe LineItem, type: :model do
  it 'should count full price' do
    record = LineItem.new
    record.unit_price = 5
    record.quantity = 5

    record.full_price.should eq(25.0)
  end
end
