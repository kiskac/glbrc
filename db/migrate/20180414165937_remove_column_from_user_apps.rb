class RemoveColumnFromUserApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_apps, :app_id
    add_reference :user_apps, :app
  end
end
