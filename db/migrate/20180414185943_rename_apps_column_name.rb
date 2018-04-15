class RenameAppsColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :apps, :position, :default_position
  end
end
