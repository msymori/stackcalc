class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.references :user, foreign_key: true
      t.integer :year
      t.integer :revenues
      t.integer :grossRevenues
      t.integer :operateRevenues
      t.integer :nonOperateRevenues
      t.integer :incomeTax
      t.integer :income
      t.integer :expense
      t.integer :currentAssets
      t.integer :fixedAssets
      t.integer :totalAssets
      t.integer :currentLiabilites
      t.integer :fixedLiabilites
      t.integer :totalLiabilites
      t.integer :copitalStock

      t.timestamps
    end
  end
end
