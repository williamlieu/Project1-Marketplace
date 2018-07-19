class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :title
      t.text :link
      t.text :description

      t.timestamps
    end
  end
end
