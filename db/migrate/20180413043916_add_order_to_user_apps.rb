class AddOrderToUserApps < ActiveRecord::Migration[5.2]
  def change
    add_column :user_apps, :order, :integer
  end
end
