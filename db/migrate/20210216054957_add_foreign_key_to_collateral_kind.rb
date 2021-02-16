class AddForeignKeyToCollateralKind < ActiveRecord::Migration[6.0]
  def change
  	add_reference :collaterals, :collateral_kind, foreign_key: true
  end
end
