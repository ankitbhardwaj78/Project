class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :college, :string
    add_column :users, :branch, :string
    add_column :users, :semester, :string
    add_column :users, :credits, :string
    add_column :users, :profile_pic, :string
  end
end
