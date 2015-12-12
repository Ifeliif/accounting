class CreateCategoryMasters < ActiveRecord::Migration
  def change
    create_table :category_masters do |t|
      t.string :code
      t.string :name
      t.integer :level
      t.string :upper_code

      t.timestamps
    end
  end
end
