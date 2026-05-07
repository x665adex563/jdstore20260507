class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :desciption
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
