class CreateAcMasters < ActiveRecord::Migration
  def change
    create_table :ac_masters do |t|
      t.string :code
      t.string :name
      t.integer :cd_division
      t.integer :level
      t.string :upper_code

      t.timestamps
    end
  end
end
