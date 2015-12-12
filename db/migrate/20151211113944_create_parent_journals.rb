class CreateParentJournals < ActiveRecord::Migration
  def change
    create_table :parent_journals do |t|
      t.date :transaction_date
      t.text :detail

      t.timestamps
    end
  end
end
