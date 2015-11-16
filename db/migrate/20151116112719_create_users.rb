class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :gender
      t.string :birthday
      t.string :email
      t.string :contact
      t.string :address
      t.string :about_you
      t.string :password

      t.timestamps null: false
    end
  end
end
