class Collateral < ApplicationRecord
has_many :collateral_tags, inverse_of: :collateral, dependent: :destroy
has_many :tags, through: :collateral_tags
accepts_nested_attributes_for :tags, allow_destroy: true
# accepts_nested_attributes_for :collateral_tags, allow_destroy: true
validates_presence_of   :name,
						:url,
						:kind

end
