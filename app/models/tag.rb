class Tag < ApplicationRecord
  has_many :collateral_tags, inverse_of: :tag, dependent: :destroy
  has_many :collaterals, through: :collateral_tags
  belongs_to :tag_kind
  validates_presence_of :name
end
