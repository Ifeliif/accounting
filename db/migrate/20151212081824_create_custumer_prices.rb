class CreateCustumerPrices < ActiveRecord::Migration
  def change
    create_table :custumer_prices do |t|
      t.string :product_id
      t.string :custumer_id
      t.integer :price

      t.timestamps
    end
  end
end
