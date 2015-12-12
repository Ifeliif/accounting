class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :ac_master_id
      t.string :amount
      t.string :parent_journal_id
      t.integer :cd_division

      t.timestamps
    end
  end
end
