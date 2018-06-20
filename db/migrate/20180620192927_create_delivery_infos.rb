class CreateDeliveryInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_infos do |t|
      t.references :order, foreign_key: true
      t.string :address1
      t.string :address2
      t.integer :phone

      t.timestamps
    end
  end
end
