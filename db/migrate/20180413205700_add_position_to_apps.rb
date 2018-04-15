class AddPositionToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :position, :integer
  end
end
