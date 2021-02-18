class Tag < ApplicationRecord
  paginates_per 5
  has_many :collateral_tags, inverse_of: :tag, dependent: :destroy
  has_many :collaterals, through: :collateral_tags
  belongs_to :tag_kind
    
  validates :name, uniqueness: { scope: :tag_kind_id,
    message: "The name already exists for this tag kind" }, presence: true
end
