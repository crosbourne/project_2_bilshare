class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.float :amount
      t.date :deadline
      t.references :bill_type, index: true

      t.timestamps
    end
  end
end
