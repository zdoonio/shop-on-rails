class CreateShippingTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_types do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
