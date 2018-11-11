class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, numericality: {greater_than: 0.0}
  validates :category, presence: :true

  has_attached_file :photo, styles: { large: "640x480", medium: "320x240", thumb: "150x120"}, :default_url => "http://www.wakaama.co.nz/imagecache?u=http%3A%2F%2Fs3.wakaama.co.nz%2Fstory%2F1001604%2Fphotos%2FMaungatapu_e.jpg&w=200"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
