class Collateral < ApplicationRecord
  has_many :collateral_tags
  has_many :tags, through: :collateral_tags
end
