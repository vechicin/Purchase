class AddInvestmentRefToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :investment, foreign_key: { to_table: :investments }, null: false
  end
end
