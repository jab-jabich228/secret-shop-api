class CreatePotions < ActiveRecord::Migration[8.1]
  def change
    create_table :potions do |t|
      t.string :name
      t.string :effect
      t.integer :price
      t.integer :duration

      t.timestamps
    end
  end
end
