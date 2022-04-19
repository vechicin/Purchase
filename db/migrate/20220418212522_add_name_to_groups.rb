class AddNameToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :name, :string
    add_column :groups, :icon, :string
  end
end
