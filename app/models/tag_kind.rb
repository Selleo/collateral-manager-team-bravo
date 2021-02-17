class TagKind < ApplicationRecord
	paginates_per 5
   	has_many :tags
	validates_uniqueness_of :kind
	validates_presence_of :kind
end
