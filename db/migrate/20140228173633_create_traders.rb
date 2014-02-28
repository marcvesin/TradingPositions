class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.text :name

      t.timestamps
    end
  end
end
