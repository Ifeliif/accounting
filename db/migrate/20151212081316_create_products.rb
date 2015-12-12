class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :selling_price
      t.integer :buying_price
      t.integer :selling_cost
      t.integer :tax_category
      t.string :category

      t.timestamps
    end
  end
end
