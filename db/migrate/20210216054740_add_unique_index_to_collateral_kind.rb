class AddUniqueIndexToCollateralKind < ActiveRecord::Migration[6.0]
  def change
  	add_index :collateral_kinds, :kind, unique: true
  end
end
