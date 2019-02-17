class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, numericality: {greater_than: 0.0}
  validates :category, presence: :true

  has_attached_file :photo, styles: { large: "640x480", medium: "320x240", thumb: "150x120"}, :default_url => "/image-missing-md.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  def to_param
    "#{id}-#{name}".parameterize
  end
end
