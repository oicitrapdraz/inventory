class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :stock
      t.decimal :price
      t.decimal :discount_price
      t.string :identifier
      t.references :branch, foreign_key: true

      t.timestamps
    end
  end
end
