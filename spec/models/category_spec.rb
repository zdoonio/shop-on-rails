require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should validates presence' do
    record = Category.new
    record.valid?
    record.errors[:name].should include("nie może być puste")
  end

  it 'parametrize' do
    record = Category.new(id: 1, name: 'Słodycze')
    record.to_param.should include("1-slodycze")
  end
end
