require 'rails_helper'

RSpec.describe Address, type: :model do

  it 'should validates presence first name' do
    record = Address.new
    record.valid?
    record.errors[:first_name].should include("nie może być puste")
  end

  it 'should validates presence last name' do
    record = Address.new
    record.valid?
    record.errors[:last_name].should include("nie może być puste")
  end

  it 'should validates presence zip code' do
    record = Address.new
    record.valid?
    record.errors[:zip_code].should include("nie może być puste")
  end

  it 'should validates presence street' do
    record = Address.new
    record.valid?
    record.errors[:street].should include("nie może być puste")
  end

  it 'should validates presence email' do
    record = Address.new
    record.valid?
    record.errors[:email].should include("nie może być puste")
  end

  it 'should validates presence city' do
    record = Address.new
    record.valid?
    record.errors[:city].should include("nie może być puste")
  end

end
