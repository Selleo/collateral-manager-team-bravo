class CollateralTag< ApplicationRecord
	belongs_to :collateral 
	belongs_to :tag, inverse_of: :collateral_tags
	
end