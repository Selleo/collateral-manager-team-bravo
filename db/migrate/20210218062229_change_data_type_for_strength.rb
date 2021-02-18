class ChangeDataTypeForStrength < ActiveRecord::Migration[6.0]
  def change
  	change_column(:collateral_tags, :strength, :float)
  end
end
