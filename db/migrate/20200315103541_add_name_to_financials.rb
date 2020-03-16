class AddNameToFinancials < ActiveRecord::Migration[5.2]
  def change
    add_column :financials, :name, :string
  end
end
