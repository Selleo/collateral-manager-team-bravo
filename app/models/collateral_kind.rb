class CollateralKind < ApplicationRecord
	has_many :collaterals
	validates_uniqueness_of :kind
	validates_presence_of :kind
	def kind_name
  		"#{id} #{kind}"
	end
end
