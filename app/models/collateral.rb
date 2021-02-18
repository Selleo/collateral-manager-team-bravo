class Collateral < ApplicationRecord
	paginates_per 25
	has_many :collateral_tags, inverse_of: :collateral, dependent: :destroy
	has_many :tags, through: :collateral_tags
	belongs_to :collateral_kind
	# accepts_nested_attributes_for :tags, allow_destroy: true
	accepts_nested_attributes_for :collateral_tags, allow_destroy: true
	validates :name, uniqueness: { scope: :url, case_sensitive: false },presence: true
	

end
