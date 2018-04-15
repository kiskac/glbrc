class AddUserToUserApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_apps, :user_id
    add_reference :user_apps, :user
  end
end
