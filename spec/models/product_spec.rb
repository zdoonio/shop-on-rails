require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should validates presence name' do
    record = Product.new
    record.valid?
    record.errors[:name].should include("nie może być puste")
  end

  it 'should validates presence description' do
    record = Product.new
    record.valid?
    record.errors[:description].should include("nie może być puste")
  end

  it 'should validates presence category' do
    record = Product.new
    record.valid?
    record.errors[:category].should include("musi istnieć")
  end

  it 'should validates price greater than 0' do
    record = Product.new(price: -1)
    record.valid?
    record.errors[:price].should include("musi być większe od 0.0")
  end

  it 'parametrize' do
    record = Product.new(id: 1, name: 'Wafelki')
    record.to_param.should include("1-wafelki")
  end
end
