class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.references :crust, foreign_key: true
      t.references :recipe, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
