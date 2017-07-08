class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.references :user, foreign_key: true
      t.text :brand
      t.text :name
      t.integer :calories

      t.timestamps
    end
  end
end
