class CreateUserApps < ActiveRecord::Migration[5.2]
  def change
    create_table :user_apps do |t|

      t.timestamps
    end
  end
end
