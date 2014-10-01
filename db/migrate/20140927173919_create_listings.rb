class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.integer :community_id
      t.integer :listing_type_id
      t.integer :listing_category_id
      t.integer :share_type_id
      t.integer :share_category_id
      t.string :txn_terms
      t.text :description

      t.timestamps
    end
  end
end
