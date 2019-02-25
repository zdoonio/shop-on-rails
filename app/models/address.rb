class Address < ApplicationRecord
  belongs_to :order

  validates :first_name, :last_name, :zip_code, :street, :email, :city, presence: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :zip_code, zipcode: { country_code: :pl }
end
