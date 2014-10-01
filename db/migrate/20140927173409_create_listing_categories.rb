class CreateListingCategories < ActiveRecord::Migration
  def change
    create_table :listing_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
