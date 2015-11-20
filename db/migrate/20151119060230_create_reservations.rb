class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin_date
      t.date :checkout_date
      t.string :user_id
      t.string :owner_id
      t.integer :daycount
      t.string :person
      t.string :price

      t.timestamps null: false
    end
  end
end
