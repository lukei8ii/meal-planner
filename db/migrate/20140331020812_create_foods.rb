class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :serving_size
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fat

      t.timestamps
    end
  end
end
