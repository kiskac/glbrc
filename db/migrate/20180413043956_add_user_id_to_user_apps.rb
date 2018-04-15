class AddUserIdToUserApps < ActiveRecord::Migration[5.2]
  def change
    add_column :user_apps, :user_id, :integer
  end
end
