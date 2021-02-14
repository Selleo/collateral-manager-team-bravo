class CreateCollateralTags < ActiveRecord::Migration[6.0]
  def change
    create_table :collateral_tags do |t|
      t.references :collateral, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.integer :strength
      
      t.timestamps
    end
  end
end
