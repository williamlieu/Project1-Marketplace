class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :price
      t.text :location
      t.text :category
      t.timestamps
    end
  end
end
