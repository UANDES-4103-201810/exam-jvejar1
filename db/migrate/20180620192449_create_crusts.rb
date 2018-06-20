class CreateCrusts < ActiveRecord::Migration[5.1]
  def change
    create_table :crusts do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
