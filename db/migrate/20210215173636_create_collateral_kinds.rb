class CreateCollateralKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :collateral_kinds do |t|
      t.string :kind

      t.timestamps
    end
  end
end
