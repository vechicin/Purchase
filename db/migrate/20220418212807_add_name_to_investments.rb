class AddNameToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_column :investments, :name, :string
    add_column :investments, :amount, :float
  end
end
