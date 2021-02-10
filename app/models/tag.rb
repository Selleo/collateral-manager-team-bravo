class Tag < ApplicationRecord
  has_many :collateral_tags
  has_many :collaterals, through: :collateral_tags
end
