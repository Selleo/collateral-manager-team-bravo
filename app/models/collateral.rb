class Collateral < ApplicationRecord
  has_and_belongs_to_many :tags
  # has_many :tags, through: :collateral_tags
end
