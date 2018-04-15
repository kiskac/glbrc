class AddAppIdToUserApps < ActiveRecord::Migration[5.2]
  def change
    add_column :user_apps, :app_id, :integer
  end
end
