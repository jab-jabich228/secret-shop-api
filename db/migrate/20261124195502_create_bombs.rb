class CreateBombs < ActiveRecord::Migration[8.1]
  def change
    create_table :bombs do |t|
      t.string :name
      t.integer :damage
      t.integer :price
      t.integer :stock
      t.references :potion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
