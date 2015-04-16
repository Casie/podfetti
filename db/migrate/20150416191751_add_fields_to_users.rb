class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    # t.string :email_address
    # t.string :password
    # t.datetime :created_at
    # t.datetime :updated_at
  end
end
