class TagKind < ApplicationRecord
	paginates_per 5
   	has_many :tags
	validates :kind, uniqueness: true, presence: true
	
end
