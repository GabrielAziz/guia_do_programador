class AddIconToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :icon, :string
  end
end
