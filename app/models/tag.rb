class Tag < ApplicationRecord
  has_many :collateral_tags, inverse_of: :tag, dependent: :destroy
  has_many :collaterals, through: :collateral_tags
  validates_presence_of :name,
						:kind
end
