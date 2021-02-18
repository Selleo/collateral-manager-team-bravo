class CollateralKind < ApplicationRecord
	paginates_per 5
	has_many :collaterals
	validates :kind, uniqueness: true, presence: true
	

end
