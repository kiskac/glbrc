class AddColumnToUserApps < ActiveRecord::Migration[5.2]
  def change
    add_column :user_apps, :visible, :boolean
  end
end
