class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.text :name
      t.decimal :price

      t.timestamps
    end
  end
end
