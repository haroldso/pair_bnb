class AddUserOauthExpiresAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :user, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end
