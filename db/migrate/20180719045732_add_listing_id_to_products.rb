class AddListingIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :listing_id, :integer
  end
end
