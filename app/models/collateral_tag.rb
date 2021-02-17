class CollateralTag< ApplicationRecord
	belongs_to :collateral 
	belongs_to :tag, inverse_of: :collateral_tags
	attr_accessor :tag_name, :tag_kind_id


	before_validation do
		self.tag = Tag.find_or_create_by!(name: self.tag.name, tag_kind_id: tag_kind_id)
	end
end