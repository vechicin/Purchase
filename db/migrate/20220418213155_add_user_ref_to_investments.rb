class AddUserRefToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_reference :investments, :user, foreign_key: { to_table: :users }, null: false
  end
end
