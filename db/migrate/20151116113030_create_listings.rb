class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :room_type
      t.string :home_type
      t.integer :accomodates
      t.string :city
      t.integer :bedroom
      t.integer :bathroom
      t.string :listing_name
      t.string :summary
      t.integer :bedcount
      t.string :user_id

      t.timestamps null: false
    end
  end
end
