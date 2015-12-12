class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :code
      t.date :start_date
      t.date :end_date
      t.integer :level
      t.string :upper_code

      t.timestamps
    end
  end
end
