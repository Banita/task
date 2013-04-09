class AddDevise < ActiveRecord::Migration
  def up
  	add_column :users, :password_salt, :string
    add_column :users, :authentication_token, :string
    add_column :users, :confirmation_token,   :string
    add_column :users, :confirmed_at,         :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :reset_password_token, :string
    add_column :users, :remember_token,      :string
    add_column :users, :remember_created_at, :datetime
  end

  def down
  	remove_column :users,:password_salt
  	remove_column :users, :authentication_token
    remove_column :users, :confirmation_token
    remove_column :users, :confirmed_at
    remove_column :users, :confirmation_sent_at
    remove_column :users, :reset_password_token
    remove_column :users, :remember_token
    remove_column :users, :remember_created_at
  end
end
