class ChangeUserColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_id,:string
    add_column :users, :password, :string
  end
end
