class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text   :description
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :neighborhood

      t.timestamps
    end
  end
end
