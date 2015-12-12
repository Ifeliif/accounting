class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :code
      t.string :name
      t.string :department_id
      t.date :start_date

      t.timestamps
    end
  end
end
