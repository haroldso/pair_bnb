class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin_date
      t.date :checkout_date
      t.string :user_id
      t.string :listing_id
      t.integer :daycount
      t.string :person
      t.integer :totalprice

      t.timestamps null: false
    end
  end
end
