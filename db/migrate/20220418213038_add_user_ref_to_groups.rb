class AddUserRefToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, foreign_key: { to_table: :users }, null: false
  end
end
