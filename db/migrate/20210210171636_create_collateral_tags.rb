class CreateCollateralTags < ActiveRecord::Migration[6.0]
  def change
    create_table :collaterals_tags do |t|
      t.integer :collateral_id, index: true
      t.integer :tag_id, index: true
      t.timestamps
      t.integer :strength
    end
  end
end
