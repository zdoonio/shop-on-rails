class AddPhotoToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :products, :photo
  end
end
