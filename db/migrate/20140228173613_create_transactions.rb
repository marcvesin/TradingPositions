class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :trader_id
      t.integer :stock_id
      t.text :execution_date
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
